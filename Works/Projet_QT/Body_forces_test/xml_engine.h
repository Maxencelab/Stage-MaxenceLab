#ifndef XML_ENGIN_H
#define XML_ENGIN_H

#include <QObject>
#include <QDebug>

class Xml_Engine : public QObject
{
    Q_OBJECT
public:
     Xml_Engine(QObject *parent = nullptr);

signals:

public slots:
     void test();
     QString get_node(QString);
     void set_node_text(QString,QString);
};

#endif // XML_ENGIN_H
