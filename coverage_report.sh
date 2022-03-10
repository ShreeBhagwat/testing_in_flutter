#run this in terminal sh coverage_report.sh

flutter test --update-goldens --coverage

lcov --capture --directory ./coverage --output-file lcov.info

genhtml ./coverage/lcov.info --output-directory ./coverage/html