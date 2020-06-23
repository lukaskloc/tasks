#!/usr/bin/env bash

run_script_runcrud()
{
  ./runcrud.sh
}

start_safari()
{
  open /Applications/Safari.app
}

get_tasks()
{
  open http://localhost:8080/crud/v1/task/getTasks
}

fail() {
  echo "There were errors"
}

if run_script_runcrud; then
  start_safari
  get_tasks
else
  fail
fi