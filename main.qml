import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.VirtualKeyboard 2.3
import QtQuick.Controls 2.0
import "."

Window {
    property bool mbImageClicked:true
    property bool mbImageClicked2:true
    property int mCount:0

    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Hello World")

    function qmlSlotTestData(data) {
        console.log( "qmlSlotTestData=" + data);
        textP03.text = data;
    }

    StackView
    {
        id:stackView
        anchors.fill:parent
        initialItem: Item
        {
            Image {
                id: image
                width: parent.width
                height: parent.height
                z: 0
                visible: true
                fillMode: Image.PreserveAspectFit
                source: "1.jpg"

                Text {
                    id: textP03
                    x: 87
                    y: 332
                    z:99
                    width: 146
                    height: 41
                    color: "#6a6a6a"
                    text: "123"
                    font.bold: true
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 27
                }
                Rectangle {
                    id: rectP03
                    x: textP03.x
                    y: textP03.y
                    width: textP03.width
                    height: textP03.height
                    color: "white"
                }
                Text {
                    id: textP05
                    x: 360
                    y: 332
                    z:99
                    width: 146
                    height: 41
                    color: "#6a6a6a"
                    text: "456"
                    font.bold: true
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 27
                }
                Rectangle {
                    id: rectP05
                    x: textP05.x
                    y: textP05.y
                    width: textP05.width
                    height: textP05.height
                    color: "white"
                }
                Text {
                    id: textP10
                    x: 640
                    y: 332
                    z:99
                    width: 146
                    height: 41
                    color: "#6a6a6a"
                    text: "789"
                    font.bold: true
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 27
                }
                Rectangle {
                    id: rectP10
                    x: textP10.x
                    y: textP10.y
                    width: textP10.width
                    height: textP10.height
                    color: "white"
                }
                Text {
                    id: textP25
                    x: 87
                    y: 586
                    z:99
                    width: 146
                    height: 41
                    color: "#6a6a6a"
                    text: "123"
                    font.bold: true
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 27
                }
                Rectangle {
                    id: rectP25
                    x: textP25.x
                    y: textP25.y
                    width: textP25.width
                    height: textP25.height
                    color: "white"
                }
                Text {
                    id: textP50
                    x: 360
                    y: 586
                    z:99
                    width: 146
                    height: 41
                    color: "#6a6a6a"
                    text: "456"
                    font.bold: true
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 27
                }
                Rectangle {
                    id: rectP50
                    x: textP50.x
                    y: textP50.y
                    width: textP50.width
                    height: textP50.height
                    color: "white"
                }
                Text {
                    id: textP100
                    x: 640
                    y: 586
                    z:99
                    width: 146
                    height: 41
                    color: "#6a6a6a"
                    text: "789"
                    font.bold: true
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 27
                }
                Rectangle {
                    id: rectP100
                    x: textP100.x
                    y: textP100.y
                    width: textP100.width
                    height: textP100.height
                    color: "white"
                }
            }

            Item {
                Image {
                    id: imgSetup
                    x: 1000
                    y: 620
                    width: 200
                    height: 70
                    z: 99
                    source: btnSetup.pressed ? "set-button2.png" : "set-button.png"
                }
                Button {
                    id: btnSetup;
                    x: imgSetup.x+10
                    y: imgSetup.y+10
                    width: imgSetup.width-20
                    height: imgSetup.height-20
                    onClicked: {
                        stackView.push(Qt.resolvedUrl("qrc:/screen1.qml"))
                    }
                }
            }

            Item {
                Image {
                    id: imgVib
                    x: 1000
                    y: 200
                    width: 200
                    height: 70
                    z: 99
                    source: btnVib.pressed ? "vib-button2.png" : "vib-button.png"
                }
                Button {
                    id: btnVib;
                    x: imgVib.x+10
                    y: imgVib.y+10
                    width: imgVib.width-20
                    height: imgVib.height-20
                }
            }
        }
    }

    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: window.height
        width: window.width

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}


