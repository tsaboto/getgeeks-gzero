robot -l NONE -o NONE -r NONE tasks/Delorean.robot
pabot -X xunit.xml -d ./logs -v BROWSER:chromium -v HEADLESS:True tests

rm -rf ./logs/browser
mkdir ./logs/browser
mkdir ./logs/browser/screenshot

cp $(find ./logs/pabot_results -type f -name "*.png") ./logs/browser/screenshot

# robot -d ./logs  -v BROWSER:chromium -v HEADLESS:True tests
# robot -d ./logs tests 