#This command is used to clear the screen
clear
#This is used to store the path of current directory into WORKING_PATH
setenv WORKING_PATH `pwd`
#This is used to create a new directories in your current path.
#mkdir -p $WORKING_PATH
cd $WORKING_PATH
rm -rf file2.txt
rm -rf file3.txt
#-------------------------------------------------------------------------------
echo "List of states:" >> file2.txt
echo "Andhrapradesh">> file2.txt
echo "Telangana" >> file2.txt
echo "Karnataka" >> file2.txt
echo "Madyapradesh" >> file2.txt
echo "List of Flowers" >> file3.txt
echo "rose" >> file3.txt
echo "hibiscus" >> file3.txt
echo "lotus" >> file3.txt
echo "tulip" >> file3.txt
echo "lily" >> file3.txt
echo "daisy" >> file3.txt
echo "canna" >> file3.txt
#--------------------------------------------------------------------------

echo $RED"Command: head -q file2.txt file3.txt"$NC
echo ""

echo $RED"Description: print the contents of each file without the file names"$NC
echo ""

echo $RED"Expected output:"$NC
echo ""

head -q file2.txt file3.txt

echo "$RED------------------------------------------------------------------------------------\
$NC"

echo $GREEN"please enter the command" $PURPLE"head -q file2.txt file3.txt" $GREEN"<enter>"$NC
echo ""
come_here:
echo $PURPLE"Enter the command here:"$NC
echo ""
 
set userinput = `head -1`
echo ""

if ("$userinput" == "head -q file2.txt file3.txt") then
    echo $GREEN"Actual output:"$NC
    echo ""
    $userinput
else
    echo $GREEN"Actual output:"$NC
    echo ""
    while (1)
      echo $GREEN"Entered wrong command:"$NC
      echo $GREEN"Try entering" $PURPLE"head -q file2.txt file3.txt" $GREEN"<enter>"$NC
      echo ""
      goto come_here
    end
endif

echo "$RED-------------------------------------------------------------------------------------\
$NC"

echo $PURPLE "Now you have learnt all about head -q filename\
and now you try doing remaining commands in head" $NC

cd $WORKING_PATH
rm -rf file2.txt
rm -rf file3.txt
