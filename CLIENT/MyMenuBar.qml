import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4




MenuBar {
    property var foregroundColor : "#EEEEEE"
    property var backgroundColor : "#404040"
    property var highlightColor : "#555555"

    function replaceText(txt)
    {
        var index = txt.indexOf("&");
        if(index >= 0)
            txt = txt.replace(txt.substr(index, 2), ("<u>" + txt.substr(index + 1, 1) +"</u>"));
        return txt;
    }

    Menu {title: qsTr("&File");}
    Menu {title: qsTr("&Edit")}
    Menu {title: qsTr("&View")}
    Menu {title: qsTr("&History")}
    Menu {title: qsTr("&Window")}
    Menu {title: qsTr("&Help")}


    delegate: MenuBarItem {
        id: menuBarItem
        padding:5
        topPadding: 3
        bottomPadding: 3

        contentItem: Text {
            text: replaceText(menuBarItem.text)
            color: foregroundColor
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter

                }

        background: Rectangle {
            color: menuBarItem.highlighted ? highlightColor : "transparent"
        }
    }

    background: Rectangle {
        color: backgroundColor
    }
}
