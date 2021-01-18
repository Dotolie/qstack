import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    width: 1280
    height: 800
    Image {
        id: image
        x: 0
        y: 0
        width: 1280
        height: 800
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
