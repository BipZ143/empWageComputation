#!/bin/bash -x
isPresent=1
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
	empRatePerHr=20
	empHrs=8
	wage=$(( $empHrs*$empRatePerHr ))
else
	wage=0
fi
