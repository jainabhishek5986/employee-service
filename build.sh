#!/usr/bin
# exit when any command fails
set -e

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

echo 'Building binary'
go build -o exemplar main.go
echo 'Binary Successfully build by the name of `exemplar`'
