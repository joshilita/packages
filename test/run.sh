echo "TEST COMPLETE"
variable1=$1
if [ "$variable1" ]; then
echo "hello $variable1"
fi
if [ -f ~/NewOSv3/Packages/test/startup ]; then
echo "package installed yay"
rm -rf ~/NewOSv3/Packages/test/startup
fi
