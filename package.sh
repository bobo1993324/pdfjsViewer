#! /bin/bash
mkdir package
cp build/qml build/www build/pdfjsViewer logo.png manifest.json pdfjsViewer.desktop pdfjsViewer.json package -rf
cd package
click build .
cp *.click ..
cd ..
rm -rf package
