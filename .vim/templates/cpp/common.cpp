#include <iostream>
#include <vector>
#include <list>

#include <numeric>
#include <algorithm>
#include <typeinfo>

// 获取数组长度
#define  ArraySize(array)       ( sizeof(array) / sizeof( array[0] ) )
#define  TypeName(value)        ( typeid(value).name() )

typedef  std::vector<int>  VInt;
typedef  std::list<int>    LInt;


// 这里参数为引用, 可以保证类型不退化: 比如数组类型不会退化为指针
// 这里可以接受数据类型
template<class Containor>
void showContain(const  Containor & ins)
{
    for( auto ele : ins )
        std::cout << ele  << " ";
    std::cout << std::endl;
}

int main(int argc, char **argv)
{
    std::cout << std::boolalpha;
    std::cout << "running..." << std::endl;


    std::cout << "end..." << std::endl;
}
