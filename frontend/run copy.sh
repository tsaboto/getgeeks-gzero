robot -l NONE -o NONE -r NONE tasks/Delorean.robot
# robot -d ./logs -i smoke -v BROWSER:chromium -v HEADLESS:True tests
robot -d ./logs  -v BROWSER:chromium -v HEADLESS:True tests
# robot -d ./logs tests 