#include "connectevent.h"

ConnectEvent::ConnectEvent(QObject *parent) : QObject(parent)
{
}

ConnectEvent::~ConnectEvent()
{
}

void ConnectEvent::cppSignaltoQmlSlot()
{


    emit cppSignaltestData(3);
//    emit cppSignaltestData(4);
//    emit cppSignaltestData(5);
}

void ConnectEvent::setWindow(QQuickWindow *Window)
{
    mMainView = Window;

    QObject::connect(this, SIGNAL(cppSignaltestData(QVariant)), mMainView, SLOT(qmlSlotTestData(QVariant) ));
    QObject::connect(mMainView, SIGNAL(qmlSignalStringData(QVariant)), this, SLOT(cppSlotStringData(QVariant) ));
    QObject::connect(mMainView, SIGNAL(qmlSignalintData(QVariant)), this, SLOT(cppSlotintData(QVariant) ));
}

void ConnectEvent::cppSlotStringData(QVariant stringData )
{
    QString data = stringData.toString();

    qDebug() << data;
}

void ConnectEvent::cppSlotintData(QVariant intData )
{
    int data = intData.toInt();
    qDebug() << data;
}
