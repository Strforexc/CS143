#include <iostream>
#include <typeinfo>

class MyClass {
public:
    int myField;
    void myMethod() {}
};

int main() {
    MyClass obj;
    const std::type_info& typeInfo = typeid(obj);
    std::cout << "Type name: " << typeInfo.name() << std::endl;
    // 这里你可以通过其他方式来获取类的成员信息
    return 0;
}
