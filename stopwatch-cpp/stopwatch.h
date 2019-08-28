#ifndef STOPWATCH_H
#define STOPWATCH_H

#include <QObject>
// Added Headers Required in the project
#include <QVariant>
#include <QTimer>
#include <QElapsedTimer>
#include <QDebug>

class stopwatch : public QObject
{
    Q_OBJECT

    // Properties to be exported to QML
    Q_PROPERTY( double best READ getBest WRITE setBest NOTIFY bestChanged )
    Q_PROPERTY( QString display READ getDisplay WRITE setDisplay NOTIFY displayChanged )

public:
    explicit stopwatch(QObject *parent = nullptr);

signals:
    void bestChanged();
    void displayChanged();

public slots:
    void start();
    void stop();
    void reset();
    void toggle( bool value );

private:
    QTimer m_timer;
    QElapsedTimer m_watch;
    QString m_display;
    double m_best;
    bool m_fastest;

    void timeout();
    void updateisplay( bool reset = false );

    double getBest();
    void setBest( double value );
    QString getDisplay();
    void setDisplay( QString value );
};

#endif // STOPWATCH_H
