#! /bin/bash

#included: term was included
#failNo: term was not included
#failRate: included + failNo / failNo = failRate
#improvChk: checks every segment to append to improvementScore
#improvementScore: uses binary to give a rough area to improve on

let "included = 0"
let "failNo = 0"
let "failRate = 0"
let "improvChk = 0"
let "improvementScore = 0"

echo "initialized"

#Step 1
#Grep initial check

#1.1
methodChk=("[pP]rint[aA]ccount[bB]alance" "[wW]ithdraw" "[dD]eposit")

for counter in {0..2}
do
	grpRslt=`grep ${methodChk[counter]} Lab6.java`
	if [ -z "$grpRslt" ]
	then
		let "failNo += 1"
		let "improvChk += 1"
	else
		let "included += 1"
	fi
done

if [ $improvChk -gt 0 ]
then
	let "improvementScore += 1"
	let "improvChk = 0"
fi

echo "past 1.1"

#1.2
miscGrammarChk=("[eE]nter your bank account" "[wW]ithdraw" "[dD]eposit" "[sS]how [bB]alance" "[eE]xit")
for counter in {0..4}
do
	grpRslt=`grep ${methodChk[counter]} Lab6.java`
	if [ -z "$grpRslt" ]
	then
		let "failNo += 1"
	else
		let "included += 1"
	fi
done

if [ improvChk -gt 0 ]
then
	let "improvementScore += 2"
	let "improvChk = 0"
fi

echo "past 1.2"

#feedback 

feedback=("You are missing:" "one or more core methods" "one or more menu options"
failRate="$failNo / ($failNo + $included)" | bc

case $improvementScore in
	1)
		echo "${feedback[0]} ${feedback[1]}"
		echo "You have a $failRate% fail rate"
	;;
	3)
		echo "${feedback[0]} ${feedback[1]} and ${feedback[2]}"
		echo "You have a $failRate% fail rate"
	;;
	2)
		echo "${feedback[0]} ${feedback[2]}"
		echo "You have a $failRate% fail rate"
	;;
	*)
		echo "Error in feedback module"
	;;
esac
