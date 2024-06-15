import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Style 1.0
import "../controls"

SettingsControlBasePage {
    id: root
    pageTitle: qsTr("Seat Adjustment")

    contentItem: ColumnLayout {
        anchors.centerIn: parent
        spacing: 12

        Item {Layout.fillHeight: true}

        Text {
            Layout.topMargin: 5
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Driver’s Seat")
            font.pixelSize: 14
            font.family: "Lato"
            horizontalAlignment: Text.AlignHCenter
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 20
            Layout.leftMargin: 8
            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked:  {
                    if(swipView.currentIndex !== 0){
                        swipView.currentIndex = swipView.currentIndex - 1
                    }
                }
            }

            SwipeView {
                id: swipView
                clip: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                currentIndex: 0
                Layout.preferredWidth: root.width * 0.5
                Layout.preferredHeight: 75

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--car-seat.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--car-seat-heater.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--car-seat-cooler.svg"
                }


                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-recline-extra.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-passenger.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-legroom-normal.svg"
                }


                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-legroom-extra.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-individual-suite.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-flat-angled.svg"
                }
            }

            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: {
                    if(swipView.currentIndex !== 8){
                        swipView.currentIndex = swipView.currentIndex + 1
                    }
                }
            }
        }

        Text {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Driver’s Side Seat")
            font.pixelSize: 14
            font.family: "Lato"
            horizontalAlignment: Text.AlignHCenter
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 20
            Layout.leftMargin: 8
            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked:  {
                    if(swipView2.currentIndex !== 0){
                        swipView2.currentIndex = swipView2.currentIndex - 1
                    }
                }
            }

            SwipeView {
                id: swipView2
                clip: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                currentIndex: 0
                Layout.preferredWidth: root.width * 0.5
                Layout.preferredHeight: 75

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--car-seat.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--car-seat-heater.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--car-seat-cooler.svg"
                }


                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-recline-extra.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-passenger.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-legroom-normal.svg"
                }


                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-legroom-extra.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-individual-suite.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-flat-angled.svg"
                }
            }

            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: {
                    if(swipView2.currentIndex !== 8){
                        swipView2.currentIndex = swipView2.currentIndex + 1
                    }
                }
            }
        }

        Text {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("Driver’s Back Seat")
            font.pixelSize: 14
            font.family: "Lato"
            horizontalAlignment: Text.AlignHCenter
            color: Style.alphaColor("#FFFFFF",0.5)
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 20
            Layout.leftMargin: 8
            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Back Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked:  {
                    if(swipView3.currentIndex !== 0){
                        swipView3.currentIndex = swipView3.currentIndex - 1
                    }
                }
            }

            SwipeView {
                id: swipView3
                clip: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                currentIndex: 0
                Layout.preferredWidth: root.width * 0.5
                Layout.preferredHeight: 75

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--car-seat.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--car-seat-heater.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--car-seat-cooler.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-recline-extra.svg"
                }

                SeatIcon {
                    source: "qrc:/assets/seatIcons/mdi--seat-passenger.svg"
                }
            }

            PrefsButton {
                backgroundColor: "#00000000"
                setIcon: "qrc:/assets/icons/Front Arrow.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: {
                    if(swipView3.currentIndex !== 4){
                        swipView3.currentIndex = swipView3.currentIndex + 1
                    }
                }
            }
        }

        Item {Layout.fillHeight: true}
    }
}
