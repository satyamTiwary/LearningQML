#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>

class BackEnd: public QObject // why public ?
{
    Q_OBJECT
    Q_PROPERTY( QString userName READ getUserName WRITE setUserName NOTIFY userNameChanged )

public:
    explicit BackEnd(QObject *parent = nullptr);

    QString getUserName();
    void setUserName( const QString &name ); // why const?

signals:
    void userNameChanged();

private:
    QString m_username;
};

#endif // BACKEND_H
