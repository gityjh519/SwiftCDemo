//
//  CPPerson.cpp
//  SwiftCDemo
//
//  Created by yaojinhai on 2019/6/22.
//  Copyright © 2019 yaojinhai. All rights reserved.
//

#include "CPPerson.hpp"
#include "CBridging.h"

CPPerson::CPPerson(){
    this->name = "管理员";
    this->age = 20;
    this->isNan = true;
}

CPPerson::CPPerson(const char * name,int age, bool isNan){
    this->name = name;
    this->age = age;
    this->isNan = isNan;
}

void CPPerson::printPersonInfo(){
    cout << "i am is " << name << ",my age is "<< age;
    if (isNan) {
        cout << "i am a body";
    }else{
        cout << "i am a girl";
    }
    cout << "\n";
}
const char* CPPerson::getPersonName() {
    return name.data();
}

CPPerson::~CPPerson(){
    cout << "\n释放资源\n";
}


// MARK: - 实现接口函数

CPersonModel create() {
    return new CPPerson();
}
CPersonModel createBy(const char* name,int age){
    return new CPPerson(name,age,true);
}
void printPersonInfo(CPersonModel model) {
    CPPerson *p = (CPPerson*)model;
    p->printPersonInfo();
}
const char* getPersonName(CPersonModel model){
    CPPerson *p = (CPPerson*)model;
    return p->getPersonName();
}
void destoryModel(CPersonModel model){
    CPPerson *p = (CPPerson*)model;
    delete p;
}
