#! /bin/bash
mkdir package
cp qml logo.png manifest.json pdfjsViewer.desktop pdfjsViewer.json pdfjsViewer-contenthub.json www package -rf
cd package
click build .
cp *.click ..
cd ..
rm -rf package
