### Intro to bash scripting

`man bash` shows info about `bash` as a command, `info bash` is the full hyperlinked documentation

#### Setting script interpreter and permissions

First two characters should be `#!` (shebang) followed by path to bash or env, so either
- `#!/bin/bash` (most common) or
- `#!/bin/env bash` (env would look into path for "bash")

so an executable (`chmod u+x`) script called with `./script.sh` would be executed by the kernel like `/bin/bash .
/myscript.sh`.

This goes for all interpreters like `#!/bin/python` or `awd`

- Non-executable scripts can be run with `bash script.sh` or `source script.sh`. The `source`command is a shell
  built-in that executes commands from a file in the current shell.
- Executables that are not in the path must be executed specifying the path, so if you're in the current directory
  use `./script.sh`
- file suffix is as always just informational for the user

#### Time commands

- `time [command]` measures time consumed by a process (bash built-in), e.g. `time find / -name core`

:~/$ time find / -name core
[...command output]
real    0m23,043s # real time (duh)
user    0m1,599s # cpu time used
sys     0m5,852s # time from kernel supporting the process

Variables:

#### Variables

- no spaces around `=` when assigning variables
- surround the value with `"` if it contains any special characters like space
- are declared on assignment (`timeleft=100` also creates the timeleft variable) or can be declared explicitely with
  `export`
- remove with `unset`
- assign with `[varname]=` and reference its value with `$[varname]`
- undeclared variables evaluate to null
- for a bash script to use a variable defined on the shell, it must be exported before running the script: `export
  [varname]=[value]` or just `export [varname]` for an already defined variable, e.g. export `TESTVAR=6 && /bin/bash
  /home/pk/exporttest.sh`
- This can also be done for functions defined in the shell: `export -f myfunc`
- `export` will show all exported environment variables of the current shell
