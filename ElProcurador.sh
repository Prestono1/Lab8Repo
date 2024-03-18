#! /bin/bash

#included: term was included
#failNo: term was not included
#improvChk: checks every segment to append to improvementScore
#improvementScore: uses binary to give a rough area to improve on

let "included = 0"
let "failNo = 0"
let "improvChk = 0"
let "improvementScore = 0"

#Step 1
#Grep initial check

#1.1
methodChk=("[pP]rint[aA]ccount[bB]alance" "void\s[wW]ithdraw" "void\s[dD]eposit")

for counter in {0..2}
do
	grpRslt=`grep ${methodChk[counter]} Lab6.java`
	if [ -z "$grpRslt" ]
	then
		((failNo++))
		((improvChk++))
	else
		((included++))
	fi
done

if [ $improvChk -gt 0 ]
then
	((improvementScore++))
	((improvChk = 0))
fi

#1.2
miscGrammarChk=("[eE]nter\syour\sbank\saccount" "1.\s[wW]ithdraw" "2.\s[dD]eposit" "[sS]how\s[bB]alance" "[eE]xit")
for counter in {0..4}
do
	grpRslt=`grep ${miscGrammarChk[counter]} Lab6.java`
	if [ -z "$grpRslt" ]
	then
		((failNo++))
		((improvChk++))
	else
		((included++))
	fi
done

if [ $improvChk -gt 0 ]
then
	((improvementScore += 2))
	((improvChk = 0))
fi

#feedback 

feedback=("You are missing:" "one or more core methods" "one or more menu options")

case $improvementScore in
	1)
		echo "${feedback[0]} ${feedback[1]}"
	;;
	3)
		echo "${feedback[0]} ${feedback[1]} and ${feedback[2]}"
	;;
	2)
		echo "${feedback[0]} ${feedback[2]}"
	;;
	0)
		echo "No errors detected!"
	;;
	*)
		echo "Error in feedback module"
	;;
esac
