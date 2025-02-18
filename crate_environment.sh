#!/bin/bash
mkdir -p submission_reminder_app/{bin,config,lib,data}
cat <<EOL > submission_reminder_app/config/config.env
# Configuration file for the submission reminder app
APP_NAME="Submission Reminder App"
EOL

cat <<EOL > submission_reminder_app/modules/functions.sh
#!/bin/bash
# Functions for submission reminder app

function display_reminder() {
  echo "Reminder: Please submit your assignments."
}
EOL
chmod +x submission_reminder_app/modules/functions.sh

cat <<EOL > submission_reminder_app/app/reminder.sh
#!/bin/bash
# Reminder script

source ../modules/functions.sh
display_reminder
EOL
chmod +x submission_reminder_app/app/reminder.sh

cat <<EOL > submission_reminder_app/assets/submissions.txt
# Student submissions
Phillips Adams, Assignment 1
Abbie Kate, Assignment 2
Lati Tifare, Assignment 3
EOL

cat <<EOL >> submission_reminder_app/assets/submissions.txt
Student 1, Assignment 3
Student 2, Assignment 4
Student 3, Assignment 5
Student 4, Assignment 6
Student 5, Assignment 7
EOL

echo "Environment setup completed."
