#get current file dir
set SOURCE (status -f)
set DIR (dirname "$SOURCE")

#do not exit virtualenv in child dirs
if not string match -q "$DIR*" -- "$PWD"; and type -q deactivate
  deactivate
end
