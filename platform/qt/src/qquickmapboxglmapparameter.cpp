#include "QQuickMapboxGLMapParameter"

#include <QSignalMapper>

QQuickMapboxGLMapParameter::QQuickMapboxGLMapParameter(QQuickItem *parent)
    : QQuickItem(parent)
    , m_metaPropertyOffset(metaObject()->propertyCount())
{
}

void QQuickMapboxGLMapParameter::componentComplete()
{
    QQuickItem::componentComplete();

    for (int i = m_metaPropertyOffset; i < metaObject()->propertyCount(); ++i) {
        QMetaProperty prop = metaObject()->property(i);

        if (!prop.hasNotifySignal()) {
            continue;
        }

        auto mapper = new QSignalMapper(this);
        mapper->setMapping(this, i);

        const QByteArray signalName = '2' + prop.notifySignal().methodSignature();
        QObject::connect(this, signalName, mapper, SLOT(map()));
        QObject::connect(mapper, SIGNAL(mapped(int)), this, SLOT(propertyChanged(int)));
    }
}

void QQuickMapboxGLMapParameter::propertyChanged(int id)
{
    QMetaProperty prop = metaObject()->property(id);
    qDebug() << __PRETTY_FUNCTION__ << prop.name() << property(prop.name());
}
