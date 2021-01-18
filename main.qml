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

                Label {
                    id: label
                    x: 87
                    y: 332
                    width: 146
                    height: 41
                    color: "#6a6a6a"
                    text: qsTr("12345")
                    clip: true
                    font.bold: true
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 27
                }
            }

            Image
            {
               id:vibButton
               x: 1000
               y: 200
               width: 200
               height: 70
               source:"vib-button.png"
               MouseArea{
                   anchors.fill: parent
                   onReleased: {
                       if(!mbImageClicked){
                            mbImageClicked = true;
                            vibButton.source = "vib-button.png"
//                            stackView.push(Qt.resolvedUrl("qrc:/screen1.qml"))
                        }
                   }
                   onPressed:{
                       if(mbImageClicked){
                           mbImageClicked = false;
                           vibButton.source = "vib-button2.png"
                       }
                   }
                }
            }
            Image
            {
               id:settingButton
               x: 1000
               y: 650
               width: 200
               height: 70
               source:"set-button.png"
               MouseArea{
                   anchors.fill: parent
                   onReleased: {
                       if(!mbImageClicked2){
                            mbImageClicked2 = true;
                            settingButton.source = "set-button.png"
                            stackView.push(Qt.resolvedUrl("qrc:/screen1.qml"))
                        }
                   }
                   onPressed:{
                       if(mbImageClicked2){
                           mbImageClicked2 = false;
                           settingButton.source = "set-button2.png"
                       }
                   }
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


