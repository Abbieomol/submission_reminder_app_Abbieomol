#!/bin/bash
mkdir -p quiz_reminder_app/{bin,config,lib,data}
cat <<EOL > quiz_reminder_app/config/config.env
# Configuration file for the quiz reminder app
APP_NAME="Quiz Reminder App"
EOL

cat <<EOL > quiz_reminder_app/lib/functions.sh
#!/bin/bash
# Functions for quiz reminder app

function display_reminder() {
  echo "Reminder: Please complete your quizzes."
}
EOL
chmod +x quiz_reminder_app/lib/functions.sh

cat <<EOL > quiz_reminder_app/bin/reminder.sh
#!/bin/bash
# Quiz reminder script

source ../lib/functions.sh
display_reminder
EOL
chmod +x quiz_reminder_app/bin/reminder.sh

cat <<EOL > quiz_reminder_app/data/quizzes.txt
# Student quizzes
Kwame Nkrumah, Quiz 1
Amina Yusuf, Quiz 2
EOL

cat <<EOL >> quiz_reminder_app/data/quizzes.txt
Student 1, Quiz 3
Student 2, Quiz 4
Student 3, Quiz 5
Student 4, Quiz 6
Student 5, Quiz 7
EOL

echo "Environment setup completed."
