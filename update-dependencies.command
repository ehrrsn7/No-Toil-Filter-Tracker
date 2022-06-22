# to make this command an executable script on mac, 
# run chmod +x update-dependencies.command on it first

# linux / unix(mac):
if [ "$(uname)" == "Darwin" ] || 
[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

  # display some info about the current directory
  echo "current directory:"; pwd;    echo ""
  echo "directory contents:"; ls -l; echo ""

  # python is version 3.10 (using homebrew)
  brew upgrade python@3.10
  echo "Python version: $(python3 -V)\n"

# windows
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ] || 
[ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then

  # display some info about the current directory
  echo "current directory:"; cd;   echo ""
  echo "directory contents:"; dir; echo ""

  # python is version 3.10 (using homebrew)
  # TODO: replicate code above but for windows

fi # end if sequence

# pip is up to date
python3 -m pip install --upgrade pip

# import/update python dependencies from file so we can initialize things before running server
pip -q install -r pip-requirements.txt

# export python dependencies to file for next person
pip freeze > pip-requirements.txt

# python information
echo "python dependencies:"
cat pip-requirements.txt
echo ""
echo "python version:"
python3 --version
echo ""
echo "pip version:"
pip --version
echo "\n"
