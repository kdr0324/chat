import QtQuick 2.15
import QtQuick.Window 2.15
//import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11

ApplicationWindow {
    width: 1365
    height: 815
    visible: true

    title: qsTr("Hello World")

    menuBar: MyMenuBar{}

    ColumnLayout {
        spacing: 0
        anchors.fill: parent
        Rectangle {
            color: "#361D37"
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: 40

        }
        RowLayout {
            Rectangle{
                Layout.preferredWidth: 250
                Layout.preferredHeight: parent.height
                color: "#522653"

                ColumnLayout {
                    anchors.fill: parent
                    spacing: 1
                    Button {
                        Layout.topMargin: 1
                        Layout.fillWidth: true
                        Layout.preferredHeight: 60

                    }
                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "#3F0E40"
                    }
                }
            }
            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredWidth: 1115
                Layout.preferredHeight: 848
            }

        }

    }

}
