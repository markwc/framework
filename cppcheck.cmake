add_custom_target(
  cppcheck COMMAND /usr/bin/cppcheck
  --enable=warning,performance,portability,information,missingInclude,all
  --template="[{severity}][{id}] {message} {callstack} \(On {file}:{line}\)"
  --verbose
  --quiet
  --suppress=missingIncludeSystem
  ${CPPCHECK_SOURCES}
  )
