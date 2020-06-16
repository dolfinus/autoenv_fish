export AUTOENV_ENABLE_LEAVE=1
#get current file dir
set SOURCE (status -f)
set DIR (dirname "$SOURCE")

#activate virtual env
set RETURN 1
set ACTIVATE_SCRIPT_PATH "$DIR/venv/bin/activate.fish"
if not type -q deactivate; and test -f "$ACTIVATE_SCRIPT_PATH"
  source "$ACTIVATE_SCRIPT_PATH"
  set RETURN $status
end

set REQUIREMENTS_PATH "$DIR/venv-requirements.txt"
#install dependencies
if [ $RETURN -eq 0 ]; and test -f "$REQUIREMENTS_PATH"
  pip install -r "$REQUIREMENTS_PATH" -q
end
