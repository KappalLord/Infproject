#ifndef HELPER_H
#define HELPER_H

#include <QObject>

class Helper : public QObject
{
    Q_OBJECT
public:
    explicit Helper(QObject *parent = nullptr);

signals:

public slots:
int score();
int random();
int combo();
void zero();

};

#endif // HELPER_H
