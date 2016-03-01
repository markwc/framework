add_custom_target(
  cppcheck COMMAND /usr/bin/cppcheck
  --enable=warning,performance,portability,information,missingInclude
  --template=gcc
  --verbose
  --suppress=missingIncludeSystem
  -I ${${PROJECT_NAME}_SOURCE_DIR}/src
  ${${PROJECT_NAME}_SOURCE_DIR}/src
  )
