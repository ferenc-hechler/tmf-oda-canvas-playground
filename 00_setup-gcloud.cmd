cd /D "%~dp0"

call 00-a-set-variables.cmd
cmd /c gcloud auth login
call 00-b-config-kubectl.cmd
