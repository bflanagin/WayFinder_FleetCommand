import QtQuick 2.10
import QtQuick.Window 2.3

import QtQuick.LocalStorage 2.0 as Sql

import "steem/dsteem.js" as Steem

Window {
    id:mainView
    visible: true
    width:Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    title: qsTr("WayFinder Fleet")

    property string userid:""
    property string message:""

    property string appId: "WFFC-05152018"
    property string devId: "Vag-01001011"

    color:"black"
    property string borderColor: "#D2AF2B"



    Login {
        id:os_Login
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        state:"Engage"
    }
}
