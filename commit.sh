
#echo "hi $1 ..."  

timenow=`date +%s`
human_time_now=`date -d @$timenow`

#echo $human_time_now

git add .
git commit -m "$1 $human_time_now"
