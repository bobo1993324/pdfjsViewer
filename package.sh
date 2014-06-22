#! /bin/bash
mkdir package
cp qml www logo.png manifest.json pdfjsViewer.desktop pdfjsViewer.json package -rf
cd package
click build .
cp *.click ..
cd ..
rm -rf package
