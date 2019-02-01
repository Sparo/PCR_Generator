#!/bin/bash

# $1 => build number
# $2 => stack string 
# $3 => Changes comment (optional)
# $4 => cc (optional)

# DEFINE SELECTION LISTS
projects=$(<projects.line)
ccs=$(<ccs.line)
thankyou=$(<thankyou.line)

# CLEAR SCREAN
clear

# CHECK IF WE HAVE AT LEAST BUILD ID NUMBER
if [ $# -eq 0 ]
then
    echo "Please provide BUILD_ID:"
    exit 1;
fi

# CLEAR SCREAN
clear

# SELECT PROJECTS
echo "Select project:"
select project in $projects
do
    break;
done

# CLEAR SCREAN
clear

# ADD SOME CCs
echo "Select cc:"
select cc in $ccs
do
    break;
done

# CLEAR SCREAN
clear

# GET CHANGES DESCRIPTION
echo "Describe changes:"
read changes

# CLEAR SCREAN
clear

# GET CHANGES DESCRIPTION
echo -n "Rollback build?"
read rollback

# CLEAR SCREAN
clear

# GET CHANGES DESCRIPTION
echo "Note:"
read note

# CLEAR SCREAN AND WRITE PCR TEXT
clear

# START WRITE ...
echo "BUILD_ID:"
echo "{code}"
echo $1
echo "{code}"
echo
echo "STACK_NAME:"
echo "{code}"
echo "frontend-deployment-"$project
echo "{code}"

if [ -n "$rollback" ]
then
    echo
    echo "ROLLBACK (in case it's needed)"
    echo "{code}"
    echo $rollback
    echo "{code}"
fi

if [ -n "$note" ]
then
    echo
    echo "NOTE: "$note
fi

if [ -n "$changes" ]
then
    echo
    echo "Changes:"
    echo $changes
fi

if [ -n $cc ]
then
    echo
    echo "cc:"
    echo "[~$cc]"
fi
echo
echo "Thank you,"
echo $thankyou
