#!/bin/bash
mkdir -p submission_reminder_app/{bin,config,lib,data}
cat <<EOL > submission_reminder_app/config/config.env
# Configuration file for the submission reminder app
APP_NAME="Submission Reminder App"
EOL

cat <<EOL > Submission_reminder_app/lib/functions.sh
#!/bin/bash
# Functions for submission reminder app

function display_reminder() {
  echo "Reminder: Please complete your submissions."
}
EOL
chmod +x submission_reminder_app/lib/functions.sh

cat <<EOL > submission_reminder_app/bin/reminder.sh
#!/bin/bash
# submission reminder script

source ../lib/functions.sh
display_reminder
EOL
chmod +x submission_reminder_app/bin/reminder.sh

cat <<EOL > submission_reminder_app/data/submissions.txt
# Student quizzes
Kwame Nkrumah, Quiz 1
Amina Yusuf, Quiz 2
EOL

cat <<EOL >> submission_reminder_app/data/submissions.txt
Student 1, Quiz 3
Student 2, Quiz 4
Student 3, Quiz 5
Student 4, Quiz 6
Student 5, Quiz 7
EOL

echo "Environment setup completed."
