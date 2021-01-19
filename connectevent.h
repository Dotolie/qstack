#ifndef CONNECTEVENT_H
#define CONNECTEVENT_H

#include <QQuickView>
#include <QObject>

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
};

#endif // CONNECTEVENT_H
