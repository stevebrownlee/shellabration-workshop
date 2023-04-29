#!/bin/bash

# STEP 1 ======================================================
# Clear the terminal
# LLM prompt: "How can I clear the terminal in a bash script?"









# STEP 2 ======================================================
# Prompt user which kind of gitignore is needed.
# The code provided works, so you can skip to step 3.
echo "What type of .gitignore do you need?"
PS3='> '
options=("Python" "Django" "Dotnet" "Quit")
select TYPE in "${options[@]}"; do
    case $TYPE in
    "Python" | "Django" | "Dotnet")
        break
        ;;
    "Quit")
        exit 1
        ;;
    *) echo "invalid option $REPLY" ;;
    esac
done

echo "Github SSH URL:"









# STEP 3 ======================================================
# Prompt user for the Github SSH connection string
# Use the `read` command to capture the input in an SSH variable
# LLM prompt: "How I read user input, with a prompt, in a bash script?"









# STEP 4 ======================================================
# Check if the .git directory exists
#
# If it does, echo "FAILED: Already intialized"
# If it doesn't initialize with `git init`
#
# LLM prompt: "How can I check if a directory exists in a bash script?"
DIRECTORY=".git"
if [ ]; then

else

fi









# STEP 5 ======================================================
# Use the `git remote add origin` command to add the remote origin
# Use the value of the SSH variable at the end of the command
# LLM prompt: "How do I place the value of a variable in a command in a bash script?"
#
# Extra credit for after the workshop:
# If the command fails with an exit code, echo the following message
#   "FAILED: Remote origin already exists"
#
# LLM prompt: "How do I place the value of a variable in a command in a bash script?"
# Web article: https://unix.stackexchange.com/questions/340855/bash-assign-output-error-to-variable









# STEP 6 ======================================================
# Use an `if..elif..fi` to assign one of the following URLs
# to a variable named GITIGNORE_URL
#
# If user chose Python above: https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore
# If user chose Django above: https://raw.githubusercontent.com/pedroserrudo/django-gitignore/main/.gitignore
# If user chose Dotnet above: https://raw.githubusercontent.com/microsoft/dotnet/main/.gitignore
#
# LLM prompt: "How do I check the value of a variable with an `if` statement in bash?"

if [  ]; then
    echo "Getting standard Python .gitignore"
    GITIGNORE_URL=https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore

elif [ ]; then

elif [ ]; then

fi









# STEP 7 ======================================================
# Use the `curl` command to GET the URL that you defined above
#  - Use silent mode (https://catonmat.net/cookbooks/curl/make-curl-silent)
#  - Write the response to .gitignore file (https://stackoverflow.com/questions/13735051/how-to-capture-curl-output-to-a-file)

curl









# STEP 8 ======================================================
# Check if the .gitignore file was created
#   https://linuxize.com/post/bash-check-if-file-exists/
#
# If it was show message ".gitignore created"
# If it wasn't show message "FAILED: .gitignore was not created"
#
#
# Extra credit:
# Capture the response code from curl in the variable STATUS_CODE
#   https://codefather.tech/blog/curl-bash-script/
# Only check for the existence of the file is STATUS_CODE equals 200
if ; then

else

fi
