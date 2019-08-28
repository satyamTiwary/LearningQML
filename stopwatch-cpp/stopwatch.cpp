#include "stopwatch.h"

stopwatch::stopwatch(QObject *parent) : QObject(parent)
{

}

void stopwatch::start()
{

}

void stopwatch::stop()
{

}

void stopwatch::reset()
{

}

void stopwatch::toggle(bool value)
{

}

void stopwatch::timeout()
{

}

void stopwatch::updateisplay(bool reset)
{
    if (reset) { }
}

double stopwatch::getBest()
{
    return m_best;
}

void stopwatch::setBest(double value)
{
    m_best = value;
}

QString stopwatch::getDisplay()
{
    return m_display;
}

void stopwatch::setDisplay(QString value)
{
    m_display = value;
}
