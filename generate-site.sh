export TOOL_COUNT=`wc -l < data/tools`

for i in generators/*.sh ; do
	sh $i > `basename $i .sh`
done
