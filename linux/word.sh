if [ $# -eq  0 ]
then
echo "syntax is <$0><filname>"

exit 1
fi
if [ ! -f $1 ]
then echo "file doesnt exit"
exit 1
fi
echo " -----orginal file content-------"
cat $1
grep -v -i  "linux" $1 > temp.txt
mv temp.txt $1
echo "-----update file content after deleting lines contain linux-----"
cat $1

 
