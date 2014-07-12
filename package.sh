#! /bin/bash
mkdir package/pdf.js/ -p
cp qml logo.png manifest.json pdfjsViewer.desktop pdfjsViewer.json pdfjsViewer-contenthub.json Intro.pdf package -rf
cp pdf.js/build/ package/pdf.js -rf
cd package
click build .
cp *.click ..
cd ..
rm -rf package
