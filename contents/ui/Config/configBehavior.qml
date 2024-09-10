import QtQuick
import QtQuick.Layouts
import org.kde.kirigami as Kirigami
import org.kde.plasma.components as PC3

Kirigami.ScrollablePage {
    property alias cfg_wrapOn: wrap.checked
    property alias cfg_openOverview: openOverview.checked  // For option to use overview or go to the clicked desktop

    title: i18nc("@title","General")
    Kirigami.FormLayout {
        anchors.fill: parent
        PC3.CheckBox {
            id: wrap
            Kirigami.FormData.label: i18n("Wraparound desktops:")
        }

        PC3.CheckBox {  // Checkbox for the Overview option
            id: openOverview
            Kirigami.FormData.label: i18n("Open Overview on click with pills:")
        }
    }
}
