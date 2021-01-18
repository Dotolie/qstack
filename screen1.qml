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
        layer.enabled: true
        antialiasing: true
        anchors.fill: parent

        fillMode: Image.PreserveAspectFit
        source: "3.jpg"
    }
    Button
    {
        id: nextButton
        x: 265
        y: 224
        width: 166
        height: 88
        text: "go next screen"
        onClicked: {
            stackView.push(Qt.resolvedUrl("qrc:/screen2.qml"))
        }
    }
    Button
    {
        id: preiousButton
        x: 985
        y: 686
        width: 180
        height: 72
        text:"go preious screen"
        onClicked: {
            stackView.pop()
        }
    }


}
