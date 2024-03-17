#! /bin/bash

let "workingAsIntended = 0"
let "failNo = 0"
let "failRate = 0"
let "grepNo = 0"


#Step 1
#Grep initial check

methodChk=("[pP]rint[aA]ccount[bB]alance" "[wW]ithdraw" "[dD]eposit")

for counter in {0..2}
do
	grpRslt=`grep ${methodChk[counter]} Lab6.java`
	if [ -z $grpRslt ]
	then
		let "failNo += 1"
	else
		let "workingAsIntended += 1"
	fi
done

accNoChk=(345 968 113)

for counter in {0..2}
do
	grpRslt=`grep ${accNoChk[counter]} Lab6.java`
	if [ -z $grpRslt ]
	then
		let "failNo += 1"
	else
		let "workingAsIntended += 1"
	fi
done

accBalChk=(1339 385 20)

for counter in {0..2}
do
	grpRslt=`grep ${accBalChk[counter]} Lab6.java`
	if [ -z $grpRslt ]
	then
		let "failNo += 1"
	else
		let "workingAsIntended += 1"
	fi
done

miscGrammarChk=( 
for counter in {0..2}
do
	grpRslt=`grep ${methodChk[counter]} Lab6.java`
	if [ -z $grpRslt ]
	then
		let "failNo += 1"
	else
		let "workingAsIntended += 1"
	fi
done
