# This command is used to clear the screen
clear
# This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
#---------------------------------------------------------------------------------------------
# This is used to create a new directories in your current path.
rm -rf comb
mkdir -p $WORKING_PATH/comb/apple
mkdir -p $WORKING_PATH/comb/orange
mkdir -p $WORKING_PATH/comb/banana
touch  $WORKING_PATH/comb/file1.txt
touch  $WORKING_PATH/comb/file2.txt
touch  $WORKING_PATH/comb/file3.txt
mkdir -p $WORKING_PATH/comb/country
mkdir -p $WORKING_PATH/comb/state
mkdir -p $WORKING_PATH/comb/district
#--------------------------------------------------------------------------------------------
# Giving permisiions to files and directories
chmod 777 apple
chmod 777 fil2.txt
chmod 777 district
#--------------------------------------------------------------------------------------------
echo $RED"Command: find [what_to_find]"$NC
echo ""
echo $RED"Description: This command is used to find the files and directories"$NC
echo ""
echo $RED"Expected output:"$NC
echo ""
#--------------------------------------------------------------------------------------------
echo $RED"These are the files and directories present in comb directory"$NC
cd $WORKING_PATH/comb/
ls
cd $WORKING_PATH
find -type f -name -perm 0777

echo $RED"-------------------------------------------------------------------------------------"\
$NC

echo $GREEN"please enter the command" $PURPLE"find -name -prem 0777 -print" $GREEN"<enter>"$NC
echo ""

come_here:
echo $PURPLE"Enter the command here:"$NC
echo ""
set userinput = `head -1`
echo ""

if("$userinput" == "find -name -prem 0777 -print") then
    echo $GREEN"Actual output:"$NC
    echo ""
    cd $WORKING_PATH/comb/
    echo $GREEN"These are the files and directories present your comb directory"$NC
    ls
    cd $WORKING_PATH
    echo ""
    $userinput
  else
    echo $GREEN"Actual output:"$NC
    echo ""
    while (1)
      echo $GREEN"Entered wrong command:"$NC
      echo $GREEN"Try entering" $PURPLE"find -name -prem 0777 -print" $GREEN"<enter>"$NC
      echo ""

      goto come_here
    end
endif

echo $RED"  --------------------------------------------------------------------------------------"\
$NC

echo $PURPLE"Now you have learnt all about find 0777 permission command \
and now you try doing remaining variations in find."$NC
echo ""

cd $WORKING_PATH

# This is used to delete the directories you created
rm -rf comb
