#include <QQuickMapboxGL>
#include <QQuickMapboxGLStyleLayer>
#include <QQuickMapboxGLStyleProperty>

// QQuickMapboxGLStyleLayer

QQuickMapboxGLStyleLayer::QQuickMapboxGLStyleLayer(QQuickItem *parent_, const QString &id)
    : QQuickItem(parent_)
{
    m_map["id"] = id;
}

QString QQuickMapboxGLStyleLayer::id() const
{
    return m_map.value("id").toString();
}

void QQuickMapboxGLStyleLayer::setVisibility(VisibilityType visibility)
{
    if (m_map.value("visibility").value<VisibilityType>() == visibility) {
        return;
    }

    m_map["visibility"] = visibility;
    emit visibilityChanged(visibility);
    checkUpdate();
}

QQuickMapboxGLStyleLayer::VisibilityType QQuickMapboxGLStyleLayer::visibility() const
{
    return m_map.value("visibility", Visible).template value<VisibilityType>();
}

void QQuickMapboxGLStyleLayer::setMinZoom(float minZoom)
{
    if (m_map.value("min-zoom").toFloat() == minZoom) {
        return;
    }

    m_map["min-zoom"] = minZoom;
    emit minZoomChanged(minZoom);
    checkUpdate();
}

float QQuickMapboxGLStyleLayer::minZoom() const
{
    return m_map.value("min-zoom").toFloat();
}

void QQuickMapboxGLStyleLayer::setMaxZoom(float maxZoom)
{
    if (m_map.value("max-zoom").toFloat() == maxZoom) {
        return;
    }

    m_map["max-zoom"] = maxZoom;
    emit maxZoomChanged(maxZoom);
    checkUpdate();
}

float QQuickMapboxGLStyleLayer::maxZoom() const
{
    return m_map.value("max-zoom").toFloat();
}

void QQuickMapboxGLStyleLayer::setSource(const QString &source)
{
    if (m_map.value("source").toString() == source) {
        return;
    }

    m_map["source"] = source;
    emit sourceChanged(source);
    checkUpdate();
}

QString QQuickMapboxGLStyleLayer::source() const
{
    return m_map.value("source").toString();
}

void QQuickMapboxGLStyleLayer::setSourceLayer(const QString &sourceLayer)
{
    if (m_map.value("source-layer").toString() == sourceLayer) {
        return;
    }

    m_map["source-layer"] = sourceLayer;
    emit sourceChanged(sourceLayer);
    checkUpdate();
}

QString QQuickMapboxGLStyleLayer::sourceLayer() const
{
    return m_map.value("source-layer").toString();
}

void QQuickMapboxGLStyleLayer::checkUpdate()
{
    if (m_map.value("type").isValid()
            || m_map.value("id").isValid()
            || (m_map.value("type").toString() != "background" && m_map.value("source").isValid())) {
        emit updated(m_map);
    }
}

void QQuickMapboxGLStyleLayer::itemChange(QQuickItem::ItemChange change, const QQuickItem::ItemChangeData &value)
{
    QQuickItem::itemChange(change, value);

    if (change == QQuickItem::ItemChildAddedChange) {
        if (QQuickMapboxGLStyleProperty *property = qobject_cast<QQuickMapboxGLStyleProperty *>(value.item)) {
            qWarning() << "Warning: QQuickMapboxGLStyleProperty should be a child of QQuickMapboxGLStyle.";
            property->setParentItem(nullptr);
        }
    }
}

// QQuickMapboxGLFillStyleLayer

QQuickMapboxGLFillStyleLayer::QQuickMapboxGLFillStyleLayer(QQuickItem *parent, const QString &id)
    : QQuickMapboxGLStyleLayer(parent, id)
{
    m_map["type"] = "fill";
}

// QQuickMapboxGLLineStyleLayer

QQuickMapboxGLLineStyleLayer::QQuickMapboxGLLineStyleLayer(QQuickItem *parent, const QString &id)
    : QQuickMapboxGLStyleLayer(parent, id)
{
    m_map["type"] = "line";
}

// QQuickMapboxGLCircleStyleLayer

QQuickMapboxGLCircleStyleLayer::QQuickMapboxGLCircleStyleLayer(QQuickItem *parent, const QString &id)
    : QQuickMapboxGLStyleLayer(parent, id)
{
    m_map["type"] = "circle";
}

// QQuickMapboxGLSymbolStyleLayer

QQuickMapboxGLSymbolStyleLayer::QQuickMapboxGLSymbolStyleLayer(QQuickItem *parent, const QString &id)
    : QQuickMapboxGLStyleLayer(parent, id)
{
    m_map["type"] = "symbol";
}

// QQuickMapboxGLRasterStyleLayer

QQuickMapboxGLRasterStyleLayer::QQuickMapboxGLRasterStyleLayer(QQuickItem *parent, const QString &id)
    : QQuickMapboxGLStyleLayer(parent, id)
{
    m_map["type"] = "raster";
}

// QQuickMapboxGLBackgroundStyleLayer

QQuickMapboxGLBackgroundStyleLayer::QQuickMapboxGLBackgroundStyleLayer(QQuickItem *parent, const QString &id)
    : QQuickMapboxGLStyleLayer(parent, id)
{
    m_map["type"] = "background";
}
