#Just didn't work out

#Step 2
#Should try all of bankNos and if any pass, increment
#working as intended and if anything fails it incrememnts failNo
#
#bankNos=(345 968 113)
#
#for counter in {0..2}
#
#	java Lab6.java
#	sleep 2
#	echo ${bankNos[counter]}
#	
#	if[ $? -eq 1 ]
#	then
#		let "failNo += 1"
#	else
#		let "workingAsInteded += 1"
#	fi
#done
#
#
#Step 3.1
#Withdraw testing
#
#withdrawNos=(1340 -1 0)
#
#for counter in {0..2}
#do
#	java Lab6.java
#	sleep 2
#	echo 345
#	sleep 1
#	echo 1
#	sleep 1
#
#	echo ${withdrawNos[counter]}
#	if[ $? -eq 1 ]
#	do
#		let "failNo += 1"
#	else
#		let "workingAsIntended += 1"
#	fi
#done
#Step 3.2
#Deposit testing
#
#depositNos=(1339 0 -1)
#
#for counter in {0..2}
#do
#	java Lab6.java
#	sleep 2
#	echo 345
#	sleep 1
#	echo 2
#
#	echo ${depositNos[counter]}
#	if[ $? -eq 1 ]
#	then
#		let "failNo += 1"
#	else
#		let "workingAsIntended += 1"
#	fi
#done
#Step 3.3
#Just test show balance
#	
#java Lab6.java
#sleep 2
#echo 345
#sleep 1
#echo 3
#
#if[ $? -eq 1 ]
#then
#	let "failNo += 1"
#else
#	let "workingAsIntended += 1"
#fi
#
#Step 3.4
#Just test exit feature
#
#java Lab6.java
#sleep 2
#echo 345
#sleep 1
#echo 4
#
#if[ $? -eq 1 ]
#then
#	let "failNo += 1"
#else
#	let "workingAsIntended += 1"
#fi
#
#EOF
