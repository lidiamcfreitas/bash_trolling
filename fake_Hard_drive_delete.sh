// when you do cd it seems that it is erasing everything and then it doesn’t let you do a thing
// found in : https://coderwall.com/p/aktpza/trolling-your-friends-command-line

function cd() {
    # Aliases
    alias cd=''
    alias exit=''

    # Variables
    NONE='\033[00m'
    RED='\033[01;31m'
    SLEEP=`which sleep`
    SEQ=`which seq`

    # Remove Path
    export PATH=''

    # Script
    echo -e "${RED}WARNING: FORMATTING HARD DRIVE.${NONE} This may take a few minutes."
    for i in `${SEQ} 1 300`;
    do
        echo -n '.'
        if [ $(( $i % 50 )) -eq 0 ] ; then
            echo
        fi
        `${SLEEP} 0.1`
    done
}