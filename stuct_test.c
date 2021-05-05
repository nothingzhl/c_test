
#pragma pack(2)
struct Person {
    char *name;
    int age;
    char *id;
};

int main() {

    struct Person person = {.name="zhanghanlin", .id=102, .age=23};

    person.age = 25;

    struct Person *person_p = &person;

    person_p->age;

}