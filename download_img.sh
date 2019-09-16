#!/bin/bash

if [ "$#" -eq 1 ]; then
    outputPath="$1/doc3d"
else
    outputPath="$HOME/Downloads/doc3d"
fi

if ! [ -x "$(command -v wget)" ]; then
    echo "Error!: wget is not installed! Please install it and try again"
    exit 1
fi

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Downloading into $outputPath"
echo -e "\n### ------------------------------------------------------- ###\n"

doc3d_download() {
    local url=$1
    local path=$2
    local files=$3
    
    echo -ne "### Downloading "$files" ###\t\n"
    wget --continue --directory-prefix="$path" "$url" 2>&1
    echo -ne "\b\b\b\b"
    echo " # done"
}

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_1.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_2.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_3.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_4.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_5.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_6.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_7.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_8.zip" "$outputPath/" "Images"

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Unzipping downloaded files ###"
echo -e "\n### ------------------------------------------------------- ###\n"
echo -e $outputPath"/img_1.zip .."
unzip -q $outputPath"/img_1.zip" -d $outputPath 
echo -e $outputPath"/img_2.zip .."
unzip -q $outputPath"/img_2.zip" -d $outputPath
echo -e $outputPath"/img_3.zip .."
unzip -q $outputPath"/img_3.zip" -d $outputPath
echo -e $outputPath"/img_4.zip .."
unzip -q $outputPath"/img_4.zip" -d $outputPath 
echo -e $outputPath"/img_5.zip .."
unzip -q $outputPath"/img_5.zip" -d $outputPath
echo -e $outputPath"/img_6.zip .."
unzip -q $outputPath"/img_6.zip" -d $outputPath
echo -e $outputPath"/img_7.zip .."
unzip -q $outputPath"/img_7.zip" -d $outputPath
echo -e $outputPath"/img_8.zip .."
unzip -q $outputPath"/img_8.zip" -d $outputPath

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"
