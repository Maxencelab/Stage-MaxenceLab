#include <QtXml>
#include <iostream>
#include "xml_engine.h"


Xml_Engine::Xml_Engine(QObject *parent) : QObject(parent)
{

}

void Xml_Engine::test()
{
    qDebug() << "Hello from c++";

}
QString Xml_Engine::get_node(QString node)
{
    QDomDocument doc("mydocument");
    QFile file("/home/ml05682l/Work/Qt_creator_project/Body_forces/setup.xml");
      if (!file.open(QIODevice::ReadOnly)){
          return "Le fichier n'a pas pu être ouvert";
      }
      if (!doc.setContent(&file)) {
          file.close();
          return "Le fichier n'a pas pu être ouvert";
      }
      file.close();
      // print out the element names of all elements that are direct children
      // of the outermost element.
      QDomElement docElem = doc.documentElement();
      QDomNodeList g = doc.elementsByTagName(node);
      return g.item(0).toElement().text();

}
void Xml_Engine::set_node_text(QString node, QString text)
{
    QDomDocument doc("mydocument");
    QFile file("/home/ml05682l/Work/Qt_creator_project/Body_forces/setup.xml");
      if (!file.open(QIODevice::ReadWrite)){
          return;
      }
      if (!doc.setContent(&file)) {
          file.close();
          return;
      }
      QDomElement docElem = doc.documentElement();
      QDomNodeList g = doc.elementsByTagName(node);
      QDomText g_txt = g.item(0).toElement().firstChild().toText();
      g_txt.setData(text);
      file.resize(0);
      QTextStream stream;
      stream.setDevice(&file);
      doc.save(stream,4);
      return;

}
