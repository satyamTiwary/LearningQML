#include "backend.h"

BackEnd::BackEnd(QObject *parent) :
    QObject (parent)
{}

QString BackEnd::getUserName()
{
    return m_username;
}

void BackEnd::setUserName(const QString &name)
{
    if (name == m_username)
        return;

    m_username = name;
    emit userNameChanged();
}
