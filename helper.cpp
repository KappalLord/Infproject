#include "helper.h"
#include <QDebug>

Helper::Helper(QObject *parent) : QObject(parent)
{

}
int scoring= 0 ;
int combin = 0;

int Helper::score(){
    scoring=scoring + 1*(combin+1);
    combin++;
    return scoring;
}
int Helper::combo(){
    return combin;
}
void Helper::zero(){
    scoring = 0;
    combin = 0;
}


int Helper::random(){
    srand(time(NULL));
    int randnumber = 1 + rand() % 4;
    int rrand = 32 + 92*(randnumber-1);
    return rrand;
}
