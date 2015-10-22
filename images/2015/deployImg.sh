

mv ~/workspace/*.zip  .

echo "start"
for filename in `ls ./*.zip`
do
    filenameZ=`basename $filename`
    dirname=${filenameZ%.*}
    #echo $filename
    unzip $filenameZ -d $dirname
    rm $filenameZ
    echo "finish: " $dirname
done


