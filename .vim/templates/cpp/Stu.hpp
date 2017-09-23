
#include <iostream>
#include <string>
#include <vector>
#include <list>

#include <memory>

template <class T>
class BaseCnt
{
public:
    BaseCnt() {
        mCreatedCnt++;
        mAliveCnt++;

        ShowCnt();
    }

    // NOTE: static method
    static void ShowCnt() {
        std::cout << "now are creating " << mCreatedCnt << " object" << std::endl;
        std::cout << "now exist "        << mAliveCnt   << " object" << std::endl;
    }

    ~BaseCnt() {
        mAliveCnt--;
    }

private:
    static  int  mCreatedCnt;
    static  int  mAliveCnt;
};

template <typename T>
int BaseCnt<T>::mCreatedCnt  = 0;

template <typename T>
int BaseCnt<T>::mAliveCnt  = 0;

class Person
{
public:
    Person() {

    }

};

class Stu : public Person
{
    typedef std::string string;

public:
    Stu(const string &name = string("") ) : name_(name) {
        std::cout << "Stu() by string ..." << std::endl;
    }

    Stu(const char *name)   : name_(name) {
        std::cout << "Stu() by const char * ..." << std::endl;
    }

    // copy constructor
    Stu(const Stu &stu) : name_(stu.name_){
        std::cout << "copy Stu() by  name " << name_ << std::endl;
    }

    ~Stu() {
        std::cout << "~Stu() ..." << std::endl;
    }


    void show() const {
        std::cout << "name: " << name_ << std::endl;
    }

    void SetName(string name) {
        name_ = name;
    }

private:
    string name_;
};

typedef  std::vector<Stu>   VStu;
typedef  std::list<Stu>     LStu;
