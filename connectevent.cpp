#include "connectevent.h"

ConnectEvent::ConnectEvent(QObject *parent) : QObject(parent)
{
}

ConnectEvent::~ConnectEvent()
{
}

void ConnectEvent::cppSignaltoQmlSlot()
{
    QObject::connect(this, SIGNAL(cppSignaltestData(QVariant)), mMainView, SLOT(qmlSlotTestData(QVariant) ));


    emit cppSignaltestData(3);
//    emit cppSignaltestData(4);
//    emit cppSignaltestData(5);
}

void ConnectEvent::setWindow(QQuickWindow *Window)
{
    mMainView = Window;
    cppSignaltoQmlSlot();
}
