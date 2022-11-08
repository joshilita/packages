 trap printout SIGINT
    printout() {
	echo ""
        echo "Done, I hope you enjoyed it!"
        exit
    }
echo "Press CTRL-C anytime to stop. (Starts in 3 seconds)"
sleep 3
curl parrot.live
