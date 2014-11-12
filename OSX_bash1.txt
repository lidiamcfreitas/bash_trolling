directory=$(basename "$PWD")
username=$(whoami)
computername=$HOSTNAME
computer=${computername%.*}
alias test='while true;
do
    echo -e -n $computer;
    if [ $username != $(basename "$PWD") ]; then
        echo -e -n ":"$(basename "$PWD")
    else
        echo -e -n ":~"
    fi
    echo -e -n " "$username;
    echo -e -n "$ \a";
    say operation not available;
    sleep 1;
    echo "";
done'