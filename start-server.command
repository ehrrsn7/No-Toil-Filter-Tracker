# to make this command an executable script on mac, 
# run chmod +x start-server.command on it first

echo ${path%/*}

# activate virtual environment:
echo "activating virtual environment...\n"

# linux / unix(mac):
if [ "$(uname)" == "Darwin" ] || 
[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

  source bin/activate

# windows
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ] || 
[ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then

  bin/activate

fi

# get my ip address
ip4=$(ipconfig getifaddr en0)
echo "ip4 $ip4"

# start django server
python3 site/manage.py runserver $(ipconfig getifaddr en0):8000
