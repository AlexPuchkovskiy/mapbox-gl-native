#ifndef QQUICKMAPBOXGLMAPPARAMETER_H
#define QQUICKMAPBOXGLMAPPARAMETER_H

#include <QObject>
#include <QQuickItem>

class Q_DECL_EXPORT QQuickMapboxGLMapParameter : public QQuickItem
{
    Q_OBJECT

public:
    QQuickMapboxGLMapParameter(QQuickItem *parent = Q_NULLPTR);
    virtual ~QQuickMapboxGLMapParameter() {};

protected:
    // QQmlParserStatus implementation
    void componentComplete() override;

public slots:
    void propertyChanged(int id);

private:
    int m_metaPropertyOffset;
};

QML_DECLARE_TYPE(QQuickMapboxGLMapParameter)

#endif // QQUICKMAPBOXGLMAPPARAMETER_H
