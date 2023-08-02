#!/bin/bash

if [ -z "$1" ]; then
    echo "Enter project name: "
    read NEW_PROJECT_NAME
else
    NEW_PROJECT_NAME=$1
fi

find README.md ansible.cfg inventories playbooks collections vars files \
    -type f -exec sed -i -e "s/template/${NEW_PROJECT_NAME}/g" {} + # Do not run this more than once

sed -i "/Role Structure/Q" README.md

mv ansible_project_template.code-workspace ansible_project_${NEW_PROJECT_NAME}.code-workspace

rm ./replace.sh
