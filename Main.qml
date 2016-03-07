import QtQuick 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "carousel.liu-xiao-guo"

    property int pathMargin: units.gu(10)

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("carousel")

        PathView {
            id: view
            width: parent.width
            height: parent.height*.2
            model: Model0 {}
            delegate: Item {
                id: wrapper
                width: parent.width/4
                height: width
                scale: PathView.scale
                Image {
                    width: parent.width*.5
                    height: width
                    source: iconSource
                }
            }
            path: Path {
                startX: 0
                startY: pathMargin
                PathAttribute { name: "scale"; value: 0.3 }
                PathLine { x: view.width/4; y: pathMargin }
                PathAttribute { name: "scale"; value: 0.6 }
                PathLine { x: view.width*2/4; y: pathMargin }
                PathAttribute { name: "scale"; value: 1.0 }
                PathLine { x: view.width*3/4; y: pathMargin }
                PathAttribute { name: "scale"; value: 0.6 }
                PathLine { x: view.width*4/4; y: pathMargin }
                PathAttribute { name: "scale"; value: 0.3 }
            }
        }

    }
}

