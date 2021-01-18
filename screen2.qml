import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    Image {
        id: image3
        width: parent.width
        height: parent.height
        anchors.fill: parent

        fillMode: Image.PreserveAspectFit
        source: "4.jpg"
    }
    Button
    {
        id: preiousButton
        x: 1074
        y: 115
        width: 180
        height: 72
        text:"go preious screen"
        onClicked: {
            stackView.pop()
        }
    }
}
