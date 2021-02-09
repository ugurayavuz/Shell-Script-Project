 #!/bin/bash
declare -a readFile #creating array
echo "Enter file name(Please add .txt the end of the file name.): "
read fName
mapfile -t readFile < $fName #transfer content of the file into the array
result=$(echo ${readFile[*]} | sed 's/0/zero/g; s/1/one/g; s/2/two/g; s/3/three/g; s/4/four/g; s/5/five/g; s/6/six/g; s/7/seven/g; s/8/eight/g; s/9/nine/g;') #this function changes numbers with their's word equivalents. For instance 's/0/zero/g' converts all 0's to the "zero" in file.
echo $result #prints corrected version.

