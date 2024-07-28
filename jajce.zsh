dokku () {
  local loc=/Users/brew/Work/live/jajce
  make -f $loc/Makefile create -C $loc CURDIR=$(pwd)
}

