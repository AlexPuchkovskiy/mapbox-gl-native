#ifndef QQUICKMAPBOXGLSTYLELAYER_H
#define QQUICKMAPBOXGLSTYLELAYER_H

#include <QQuickItem>

class Q_DECL_EXPORT QQuickMapboxGLStyleLayer : public QQuickItem
{
    Q_OBJECT

    Q_ENUMS(VisibilityType)

    Q_PROPERTY(QString id READ id)
    Q_PROPERTY(VisibilityType visibility READ visibility WRITE setVisibility NOTIFY visibilityChanged)
    Q_PROPERTY(float minZoom READ minZoom WRITE setMinZoom NOTIFY minZoomChanged)
    Q_PROPERTY(float maxZoom READ maxZoom WRITE setMinZoom NOTIFY maxZoomChanged)

    Q_PROPERTY(QString source READ source WRITE setSource NOTIFY sourceChanged)
    Q_PROPERTY(QString sourceLayer READ sourceLayer WRITE setSourceLayer NOTIFY sourceLayerChanged)

public:
    enum VisibilityType {
        Visible = 0,
        None
    };

    virtual ~QQuickMapboxGLStyleLayer() {}

    QString id() const;

    void setVisibility(VisibilityType);
    VisibilityType visibility() const;

    void setMinZoom(float);
    float minZoom() const;

    void setMaxZoom(float);
    float maxZoom() const;

    void setSource(const QString &);
    QString source() const;

    void setSourceLayer(const QString &);
    QString sourceLayer() const;

protected:
    // QQuickItem implementation.
    virtual void itemChange(QQuickItem::ItemChange change, const QQuickItem::ItemChangeData &value);

signals:
    void visibilityChanged(VisibilityType);
    void minZoomChanged(float);
    void maxZoomChanged(float);
    void sourceChanged(const QString &);
    void sourceLayerChanged(const QString &);
    void updated(const QVariant &params);
    void childPropertyUpdated(const QVariant &params);
    void styleChanged();

protected:
    QQuickMapboxGLStyleLayer(QQuickItem *parent, const QString &id);
    void checkUpdate();

    QVariantMap m_map;
};

class Q_DECL_EXPORT QQuickMapboxGLFillStyleLayer : public QQuickMapboxGLStyleLayer
{
public:
    QQuickMapboxGLFillStyleLayer(QQuickItem *parent, const QString &id);
    virtual ~QQuickMapboxGLFillStyleLayer() {}
};

class Q_DECL_EXPORT QQuickMapboxGLLineStyleLayer : public QQuickMapboxGLStyleLayer
{
public:
    QQuickMapboxGLLineStyleLayer(QQuickItem *parent, const QString &id);
    virtual ~QQuickMapboxGLLineStyleLayer() {}
};

class Q_DECL_EXPORT QQuickMapboxGLCircleStyleLayer : public QQuickMapboxGLStyleLayer
{
public:
    QQuickMapboxGLCircleStyleLayer(QQuickItem *parent, const QString &id);
    virtual ~QQuickMapboxGLCircleStyleLayer() {}
};

class Q_DECL_EXPORT QQuickMapboxGLSymbolStyleLayer : public QQuickMapboxGLStyleLayer
{
public:
    QQuickMapboxGLSymbolStyleLayer(QQuickItem *parent, const QString &id);
    virtual ~QQuickMapboxGLSymbolStyleLayer() {}
};

class Q_DECL_EXPORT QQuickMapboxGLRasterStyleLayer : public QQuickMapboxGLStyleLayer
{
public:
    QQuickMapboxGLRasterStyleLayer(QQuickItem *parent, const QString &id);
    virtual ~QQuickMapboxGLRasterStyleLayer() {}
};

class Q_DECL_EXPORT QQuickMapboxGLBackgroundStyleLayer : public QQuickMapboxGLStyleLayer
{
public:
    QQuickMapboxGLBackgroundStyleLayer(QQuickItem *parent, const QString &id);
    virtual ~QQuickMapboxGLBackgroundStyleLayer() {}
};

Q_DECLARE_METATYPE(QQuickMapboxGLStyleLayer::VisibilityType)

#endif // QQUICKMAPBOXGLSTYLELAYER_H
