#ifndef CONNECTEVENT_H
#define CONNECTEVENT_H

#include <QQuickView>
#include <QObject>
#include <iostream>

class ConnectEvent : public QObject
{
    Q_OBJECT
public:
    explicit ConnectEvent(QObject *parent = nullptr);
    ~ConnectEvent();

    void cppSignaltoQmlSlot();
    void setWindow(QQuickWindow *Window);

private:
    QQuickWindow *mMainView;

signals:
    void cppSignaltestData(QVariant);

public slots:
    void cppSlotStringData(QVariant stringData);
    void cppSlotintData(QVariant intData);
};

#endif // CONNECTEVENT_H
