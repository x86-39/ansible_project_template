Ansible Project - template
========================================

This is a template project

Using Template
--------------
To use this template for a new role, run


```bash
export NEW_PROJECT_NAME="NEW_NAME"

find README.md inventories playbooks vars files -type f -exec sed -i "s/template/${NEW_PROJECT_NAME}/g" {} + # Do not run this more than once

# Remove this section from README.md
sed -i "/Using Template/Q" README.md
```

This is also provided as a script as `replace.sh`.  
