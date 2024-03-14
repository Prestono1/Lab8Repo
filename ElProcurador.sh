#! /bin/bash

let "workingAsIntended = 0"
let "failNo = 0"
let "failRate = 0"

bankNos=(345 968 113 bankNo 00000 -1 -20 8.8 0.0 @@@)
#${arr[-3]}
#Step 1
#Should try all of bankNos and if any pass, increment
#working as intended and if anything fails it incrememnts failNo
for counter in {0..9}
do
	java Lab6.java
	sleep 2
	echo ${bankNos[counter]}
	
	if[ $? -eq 1 ]
	then
		let "failNo += 1"
	else
		let "workingAsInteded += 1"
	fi
done
#Step 2
#Step 3.1
#Step 3.2
#Step 3.3
#Step 3.4
