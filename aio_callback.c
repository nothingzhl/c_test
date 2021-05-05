#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<string.h>
#include<fcntl.h>
#include<aio.h>


#define BUFFER_SIZE 1025


// 回调函数
void aio_completion_handler(union sigval sigval)
{
    printf("end callblack method");
    //用来获取读aiocb结构的指针
    struct aiocb *prd;
    int ret;

    prd = (struct aiocb *)sigval.sival_ptr;

    printf("hello\n");

    //判断请求是否成功
    if(aio_error(prd) == 0)
    {
        //获取返回值
        ret = aio_return(prd);
        printf("读返回值为:%d\n",ret);
    } else{
        perror("错误发生");
    }
}


int main(int argc,char **argv)
{
    int fd,ret;
    // aio的结构体
    struct aiocb rd;


    fd = open("/Users/zhanghanlin/CLionProjects/c_test/CMakeLists.txt",O_RDONLY);
    if(fd < 0)
    {
        perror("CMakeLists.txt");
    }

    //填充aiocb的基本内容
    bzero(&rd,sizeof(rd));

    rd.aio_fildes = fd;
    rd.aio_buf = (char *)malloc(sizeof(BUFFER_SIZE + 1));
    rd.aio_nbytes = BUFFER_SIZE;
    rd.aio_offset = 0;
    rd.aio_reqprio = 1;
    rd.aio_lio_opcode = LIO_READ;

    //填充aiocb中有关回调通知的结构体sigevent
    rd.aio_sigevent.sigev_notify = SIGEV_THREAD;//block
    rd.aio_sigevent.sigev_notify_function = aio_completion_handler;//设置回调函数
    rd.aio_sigevent.sigev_notify_attributes = NULL;//使用默认属性
    rd.aio_sigevent.sigev_value.sival_ptr = &rd;//在aiocb控制块中加入自己的引用，attachment

    //异步读取文件
    ret = aio_read(&rd);
    if(ret < 0)
    {
        perror("aio_read");
    }

    printf("异步读以开始\n");
    sleep(2);
    int result=  aio_error(&rd);
    printf("异步读结束,result=%d\n",result);


    return 0;
}