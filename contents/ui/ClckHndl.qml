import QtQuick
import QtQuick.Layouts
import org.kde.plasma.plasma5support as Plasma5Support

MouseArea {
    id: clickHandler
    acceptedButtons: Qt.LeftButton
    onClicked:
    // Check if user has chosen to open Overview or switch desktops
    if (cfg.openOverview && cfg.type == 0) // Only with pills
        executable.connectSource('qdbus org.kde.kglobalaccel /component/kwin invokeShortcut "Overview"')

    Plasma5Support.DataSource {
        id: "executable"
        engine: "executable"
        connectedSources: []
        onNewData:function(sourceName, data){
            disconnectSource(sourceName)
        }
    }
}

