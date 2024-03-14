#! /bin/bash

let "workingAsIntended = 0"
let "failNo = 0"
let "failRate = 0"
let "grepNo = 0"

#Step 1
#Should try all of bankNos and if any pass, increment
#working as intended and if anything fails it incrememnts failNo

bankNos=(345 968 113 bankNo 0 9999999999 -9999999999 1 4 @@@)

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
#Grep Methods



#Step 3.1
#Withdraw testing

withdrawNos=(1339 1340 1  0 -1 9999999999 -9999999999 one @@@)

for counter in {0..9}
do
	java Lab6.java
	sleep 2
	echo 345
	sleep 1
	echo 1
	sleep 1

	echo ${withdrawNos[counter]}
	if[ $? -eq 1 ]
	do
		let "failNo += 1"
	else
		let "workingAsIntended += 1"
	fi
done
#Step 3.2
#Deposit testing

depositNos=(1339 0 1 -1 9999999999 -9999999999 one @@@@ 4 10)

for counter in {0..9}
do
	java Lab6.java
	sleep 2
	echo 345
	sleep 1
	echo 2

	echo ${depositNos[counter]}
	if[ $? -eq 1 ]
	then
		let "failNo += 1"
	else
		let "workingAsIntended += 1"
	done

done
#Step 3.3
#Step 3.4
#Step 3.5
