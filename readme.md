<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Linux notes](#linux-notes)
  - [Follow along of linux tips weekly](#follow-along-of-linux-tips-weekly)
    - [Foundations](#foundations)
      - [Distributions and derivatives](#distributions-and-derivatives)
      - [Core utilities (GNU coreutils)](#core-utilities-gnu-coreutils)
      - [Linux on a virtual private server](#linux-on-a-virtual-private-server)
    - [System basics](#system-basics)
      - [File system](#file-system)
        - [Folder Overview](#folder-overview)
        - [PATH](#path)
        - [Useful filesystem related commands](#useful-filesystem-related-commands)
      - [Command line and useful commands to search for commands](#command-line-and-useful-commands-to-search-for-commands)
      - [Keyboard shortcuts](#keyboard-shortcuts)
      - [Sudo access and root](#sudo-access-and-root)
      - [Exploring a system](#exploring-a-system)
      - [Exploring bash](#exploring-bash)
      - [Bash scripting basics](#bash-scripting-basics)
      - [The bash prompt](#the-bash-prompt)
      - [Bash output redirection](#bash-output-redirection)
      - [Bash expansion and substitution](#bash-expansion-and-substitution)
      - [Bash aliases and functions](#bash-aliases-and-functions)
        - [Aliases](#aliases)
        - [Functions](#functions)
      - [Bash arithmetic and equality operators](#bash-arithmetic-and-equality-operators)
      - [System logs](#system-logs)
      - [System startup](#system-startup)
      - [Grub](#grub)
      - [SysV init](#sysv-init)
      - [Systemd](#systemd)
      - [Cron](#cron)
      - [chroot](#chroot)
      - [User and group management](#user-and-group-management)
      - [Service management](#service-management)
      - [Backup with rsync](#backup-with-rsync)
      - [Splitting and combining files](#splitting-and-combining-files)
      - [Environment configuration files](#environment-configuration-files)
      - [Dotfiles](#dotfiles)
      - [Path variable explored](#path-variable-explored)
      - [Browsing with the directory stack](#browsing-with-the-directory-stack)
      - [Finding and locating files](#finding-and-locating-files)
      - [Working with swap](#working-with-swap)
      - [Read and write caches](#read-and-write-caches)
      - [Terminals / consoles / TTYs](#terminals--consoles--ttys)
      - [Exploring journalctl](#exploring-journalctl)
    - [Filesystem basics](#filesystem-basics)
      - [Files on linux](#files-on-linux)
      - [Archives](#archives)
      - [Permissions 101](#permissions-101)
      - [Loop devices](#loop-devices)
      - [Configuring group file shares](#configuring-group-file-shares)
      - [Managing space in the file system](#managing-space-in-the-file-system)
      - [Overlay file systems (mounts)](#overlay-file-systems-mounts)
      - [Bind mounts](#bind-mounts)
      - [Modifying the file system table](#modifying-the-file-system-table)
      - [Sticky bit (restricted deletion flag)](#sticky-bit-restricted-deletion-flag)
      - [Access control list (ACLs)](#access-control-list-acls)
    - [Working with text](#working-with-text)
      - [vim](#vim)
      - [Emacs](#emacs)
      - [nano](#nano)
      - [grep](#grep)
      - [RegEx](#regex)
      - [Sed (stream editor)](#sed-stream-editor)
      - [AWK](#awk)
      - [cut and sort](#cut-and-sort)
      - [ed](#ed)
    - [Package management](#package-management)
      - [Basics](#basics)
      - [aptitude (Debian, ubuntu...)](#aptitude-debian-ubuntu)
      - [dpkg (all debian based distros)](#dpkg-all-debian-based-distros)
      - [yum / DNF (frontends for RPM)](#yum--dnf-frontends-for-rpm)
      - [RPM (Red hat and related)](#rpm-red-hat-and-related)
      - [Creating packages](#creating-packages)
      - [Adding third party repos with APT](#adding-third-party-repos-with-apt)
      - [Hosting a local repository](#hosting-a-local-repository)
      - [Creating a network APT repository](#creating-a-network-apt-repository)
      - [Mirroring repositories](#mirroring-repositories)
      - [Zypper](#zypper)
      - [Using Flatpack](#using-flatpack)
      - [Using snaps](#using-snaps)
      - [Package management: PPAs (Personal Package Archives)](#package-management-ppas-personal-package-archives)
      - [Homebrew package management](#homebrew-package-management)
      - [Using appimage apps](#using-appimage-apps)
    - [Working remotely](#working-remotely)
      - [curl and wget](#curl-and-wget)
      - [Browsing through a SOCKS proxy server](#browsing-through-a-socks-proxy-server)
      - [X11 forwarding](#x11-forwarding)
      - [Using a Squid proxy](#using-a-squid-proxy)
      - [Using mosh (MObile SHell)](#using-mosh-mobile-shell)
      - [SSH Reverse tunnel](#ssh-reverse-tunnel)
    - [Process management](#process-management)
      - [ps](#ps)
      - [top](#top)
      - [htop](#htop)
      - [fg, bg, kill](#fg-bg-kill)
      - [Background tasks with nohup / screen / tmux](#background-tasks-with-nohup--screen--tmux)
        - [nohup](#nohup)
        - [screen (terminal multiplexer)](#screen-terminal-multiplexer)
        - [tmux (terminal multiplexer)](#tmux-terminal-multiplexer)
    - [Security](#security)
      - [Firewall basics](#firewall-basics)
      - [iptables](#iptables)
      - [UFW (uncomplicated firewall)](#ufw-uncomplicated-firewall)
      - [File checksums](#file-checksums)
      - [NTP (Network Time Protocol)](#ntp-network-time-protocol)
      - [Encrypting files](#encrypting-files)
      - [Encrypted filesystems](#encrypted-filesystems)
      - [AppArmor](#apparmor)
      - [SELinux](#selinux)
      - [Firewalls: firewalld](#firewalls-firewalld)
    - [System administration](#system-administration)
      - [Disks and partitions](#disks-and-partitions)
      - [Logical Volume Management](#logical-volume-management)
      - [Create a Raid array](#create-a-raid-array)
      - [Repairing a RAID array](#repairing-a-raid-array)
      - [Local ip address](#local-ip-address)
      - [DNS](#dns)
      - [VPN](#vpn)
      - [Exploring system hardware](#exploring-system-hardware)
      - [Drivers and modules](#drivers-and-modules)
      - [QEMU and KVM](#qemu-and-kvm)
      - [Private networking](#private-networking)
    - [Exploration](#exploration)
      - [Using diff](#using-diff)
      - [Using xargs](#using-xargs)
      - [Using watch and time](#using-watch-and-time)
  - [Building an Ubuntu server notes](#building-an-ubuntu-server-notes)
    - [Explore hardware](#explore-hardware)
    - [apt](#apt)
    - [snaps](#snaps)
    - [System logs](#system-logs-1)
    - [Process management](#process-management-1)
    - [Ressource management (processor, memory, storage, heap etc.)](#ressource-management-processor-memory-storage-heap-etc)
    - [Service management](#service-management-1)
    - [Planning for power interruptions](#planning-for-power-interruptions)
    - [Installing a desktop environment and remote desktop](#installing-a-desktop-environment-and-remote-desktop)
    - [Adding a disk](#adding-a-disk)
    - [Exploring redundant storage](#exploring-redundant-storage)
    - [Creating encrypted storage](#creating-encrypted-storage)
    - [Automatically mount disks](#automatically-mount-disks)
    - [Monitoring storage](#monitoring-storage)
    - [Network configuration with Netplan](#network-configuration-with-netplan)
    - [Firewall andministration with `uwf` (uncomplicated firewall)](#firewall-andministration-with-uwf-uncomplicated-firewall)
    - [Monitoring network activity](#monitoring-network-activity)
    - [Configuring a ssh server](#configuring-a-ssh-server)
      - [Using a key pair instead of password authentication](#using-a-key-pair-instead-of-password-authentication)
      - [Creating a ssh tunnel](#creating-a-ssh-tunnel)
    - [Sharing files with Samba](#sharing-files-with-samba)
    - [Web hosting with Apache](#web-hosting-with-apache)
    - [Web hosting with NGINX](#web-hosting-with-nginx)
    - [Hosting a database with MariaDB](#hosting-a-database-with-mariadb)
    - [Monitoring a server with cockpit](#monitoring-a-server-with-cockpit)
    - [Virtualizaton with KVM/QEMU](#virtualizaton-with-kvmqemu)
    - [Containers with LXC / LXD](#containers-with-lxc--lxd)
    - [Docker, Jellyfin, Nextcloud](#docker-jellyfin-nextcloud)
    - [Your server and the internet](#your-server-and-the-internet)
  - [Bash scripting](#bash-scripting)
    - [Using bash](#using-bash)
      - [Pipes and redirections](#pipes-and-redirections)
      - [Bash builtins](#bash-builtins)
      - [Brackets and braces in bash](#brackets-and-braces-in-bash)
      - [Bash expansions and substitutions](#bash-expansions-and-substitutions)
      - [Understanding bash script syntax](#understanding-bash-script-syntax)
      - [echo](#echo)
      - [Working with variables](#working-with-variables)
      - [math with bash](#math-with-bash)
      - [Comparing values with test](#comparing-values-with-test)
      - [Comparing values with extended test](#comparing-values-with-extended-test)
      - [Formatting and styling text output](#formatting-and-styling-text-output)
      - [Formatting output with printf](#formatting-output-with-printf)
      - [Working with arrays](#working-with-arrays)
      - [Conditionals](#conditionals)
      - [Loops](#loops)
      - [For loops](#for-loops)
      - [case statement](#case-statement)
      - [Functions](#functions-1)
      - [Reading and writing text files](#reading-and-writing-text-files)
    - [User interaction](#user-interaction)
      - [Working with arguments](#working-with-arguments)
      - [Working with options](#working-with-options)
      - [Interactive input](#interactive-input)
    - [Troubleshooting / script portability](#troubleshooting--script-portability)
  - [Not course related](#not-course-related)
    - [Multiple commands in one line](#multiple-commands-in-one-line)
    - [adding commands to bash using .bashrc](#adding-commands-to-bash-using-bashrc)
    - [cheat.sh](#cheatsh)
    - [show only uncommented lines in a configuration file:](#show-only-uncommented-lines-in-a-configuration-file)
    - [Kill window creator process](#kill-window-creator-process)
    - [commands](#commands)
      - [tac](#tac)
      - [xargs and backticks to pipe output of command1 into command2](#xargs-and-backticks-to-pipe-output-of-command1-into-command2)
      - [Give a specified group make a directory access to a folder](#give-a-specified-group-make-a-directory-access-to-a-folder)
      - [Remove alt-click behaviour so you can use IntelliJ alt-shift-click to set new carets without changing the keymap](#remove-alt-click-behaviour-so-you-can-use-intellij-alt-shift-click-to-set-new-carets-without-changing-the-keymap)
      - [Open port](#open-port)
      - [nc](#nc)
      - [tee](#tee)
      - [Use command output as command parameters](#use-command-output-as-command-parameters)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Linux notes

Linux notes and a loose follow-along of linux tips weekly on linkedin learning by Scott Simpson and other linux 
related courses

The `pi` host that is referred throughout here is defined with it's IP address in `/etc/hosts`.

## Follow along of linux tips weekly

### Foundations

#### Distributions and derivatives

- Red Hat Enterprise Linux (RHEL)
  - commercial server enterprise linux with branding and commercial support 
  - Derivatives
    - CentOS: 
      - Free (and without commercial support) Server alternative to and derived from Red Hat Enterprise Linux.
      - each release is supported for 10 years 
      - PM (packet manager): rmp + yum front end
    - Fedora
      - used to evaluate what might be added to RHEL
      - cutting edge features, short support window
      - for developers, needs troubleshooting
      - PM: dnf
    - others: Scientific Linux, Oracle Linux, Amazon Linux
- Debian
  - Derivatives:
    - Ubuntu
      - focuses on ease of use
      - desktop, server, power- and casual users
      - GNOME desktop (since 2018)
      - 2 releases per year, 2nd one with long term support release (LTS)
      - PM: dpkg and apt
      - Ubuntu itself has many derivatives
    - Mint
      - based on the current Ubuntu LTS release 
      - Focus: ease of use and media compatibility
      - includes some closed-source software
    - others: Raspbian, SteamOS, Kali, ...
- Suse
  - OpenSUSE / SUSE Linux enterprise 
- Many others not derived distros, notably
  - alpine: minimalism and security, popular as small docker image base 
  - arch linux: steep learning curve but excellent documentation
  - gentoo
  - Android
  - ChromeOS (based on Gentoo)
  - macOS - not linux but BSD based

#### Core utilities (GNU coreutils)

A standard set of commands that are present in virtually all linux distros (sometimes replaced by the busybox 
package with similar commands). They can be shown using `apt show coreutils`:

    [...]
    arch base64 basename cat chcon chgrp chmod chown chroot cksum comm cp
    csplit cut date dd df dir dircolors dirname du echo env expand expr
    factor false flock fmt fold groups head hostid id install join link ln
    logname ls md5sum mkdir mkfifo mknod mktemp mv nice nl nohup nproc numfmt
    od paste pathchk pinky pr printenv printf ptx pwd readlink realpath rm
    rmdir runcon sha*sum seq shred sleep sort split stat stty sum sync tac
    tail tee test timeout touch tr true truncate tsort tty uname unexpand
    uniq unlink users vdir wc who whoami yes

Install location varies by distro, in Linux Mint they are located in `usr/bin`. Sometimes these are replaced by 
similar commands built into the shell.

Further info can be obtained by `man [command]` or `info coreutils`; also see [cheat.sh](#cheatsh) below.

#### Linux on a virtual private server

azure / google cloud / digitalocean

Digital ocean terminology: droplet = virtual machine

Example First steps for securing a vps on a digitalocean droplet:

    # enable firewall and only enable ssh port for now
    # USE THIS ORDER or the firewall will kick you out of the ssh session
    ufw allow 22/tcp
    ufw enable
    # program to keep track of failed login attempts
    apt install fail2ban
    # create a user beside root user
    adduser username
    # add to admin group
    usermod -aG sudo username
    # switch to user 
    su username
    # add ssh key for user
    mkdir ssh
    nano .ssh/authorized_keys
    # paste public key into the file created in digitalocean UI

### System basics

#### File system

- provides a predictable location for files across distributions
- Bases filesystem at `/` (root)
- data can be relocated to other discs and remain in the same place in the filesystem

##### Folder Overview
    /               Filesystem root
    ├── bin         Binaries the system needs incl. shell, ls, cat...
    ├── boot        Kernel and initial ram disk
    ├── dev         References do system devices
    ├── etc         Configuration files (e.g. apache, x11, hosts file etc)
    ├── home        Users home folder
    ├── lib         Libraries associated with system binaries
    ├── media       Mount point for removable media
    ├── mnt         Mount point for HDs, network shares etc
    ├── opt         User installed software
    ├── proc        Represents kernel and process information as files
    ├── root        Home folder for root user (why is there android / snap stuff here?)
    ├── run         Information about running processes (PIDs, locks etc)
    ├── sbin        System binaries
    ├── srv         Files served by the system (by ftp or other)
    ├── sys         Represents parts of the system (fs, devices, etc)
    ├── tmp         Temporary info / files (with lose permissions)
    ├── usr         Another location for system and user binaries
    ├── var         Files that can vary (logs etc) but are not temporary

##### PATH

The `PATH` variable stores where the system looks for binaries when a command is entered in the shell.

    echo $PATH
    /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

##### Useful filesystem related commands

- `which [command]` shows the file in the path that's being used for a given command:
- `locate [string or regex]` fast search outside the PATH; underlying database can be stale; daily updated. When using locate 
  '*.h', only files that *end with* `.h` are found, not .html. Without the brackets, also .html, .hash etc. are found.
- `find [string or regex` slower but live checks all files

#### Command line and useful commands to search for commands

- General command pattern: `command options arguments`
- Use `\` for line continuation at the end of the line or escape characters
- Use `apropos [search term]` to show commands with descriptions that contain the search term, e.g. `apropos tree`
- To find out more about a command, use `man [command]` or for the youtube generation `curl cheat.sh/[command]

#### Keyboard shortcuts

- `Ctrl-C`: Ends a task
- `Ctrl-A` / Ctrl-E: Jump to start / end of line respectively
- `Ctrl-Z`: Suspend a task (use `jobs` to see and `fg` (foreground) and `bg` (background) to manipulate them). For 
  example, while editing something in nano or vim, press `ctrl-z`, do whatever needs to be done in the shell and 
  then type `fg` to get back into the suspended editor
- `Ctrl-D`: End of file / end of input
- Copy / cut / paste related: use ctrl+shift instead of just shift with the usual secondary keys, e.g. ctrl-shift-x 
  to cut

#### Sudo access and root

- Root is the superuser, no restrictions on any file
- Is used to perform administrative tasks
- User ID is always 0
- Logging in as user is not recommended
- use `sudo` to access the superusers privileges temporary with other users
  - sudo users / groups are defined in /etc/sudoers
  - the file MUST be edited with visudo (`sudo visudo`) for syntax checking
  - Usage: `sudo [command]` to execute a single command as superuser
  - `sudo` with various options:
    - `sudo -i` run target users shell and switch into its home (usually `/root`)
    - `sudo -s` same but switch in invoking user's shell
    - `sudo -l` show sudo privileges of current user
    - `sudo -u` specify a user to operate as
  - Logs are kept of commands that are run with `sudo`
  - Five minute timer until reauthentication started on each sudo command
  - `sudo -k` expires the timer immediately

#### Exploring a system

- Find distro / relase with `cat /etc/*release`
- `hostnamectl` shows system hostname, kernel and related
- `uname -a` pretty much like hostnamectl but condensed into one line
- `uptime` uptime and system load in the past 1, 5 and 15 minutes (0-[systems number of cores]); if the number is 
  higher than the number of cores, the system can't keep up with demands. If higher, all is fine.
- `df -h` gives an overview of filesystem's disk space usage (`-h`for human readable)
- `free` ram / swap related information
- `who`  who else is logged on 
- `systemctl` system services and statuses; `systemctl | grep running` to show running services only. `systemctl 
  status [service]`, e.g. `systemctl status syslog` or `systemctl status docker` to show status and log of a running 
  service
- `top` shows processes / ressources.
  - `x` to highlight current sort column, choose column to sort by using `<` and `>`; `R` to reverse sort order; 
    `h`for help
- `ip a` or `ifconfig` for network information


#### Exploring bash

- Auto completion for commands, arguments or files with `tab` key; double-tab to show all possibilities that start with 
  the typed in substring.
- Brace expansion (useful for e.g. creating a large number of files)

      pk@pk-lightshow:/$ echo h{e,a,u}llo
      hello hallo hullo
      pk@pk-lightshow:/$ echo h{a..c}llo
      hallo hbllo hcllo
      pk@pk-lightshow:/$ echo h{c..a}llo
      hcllo hbllo hallo
      pk@pk-lightshow:/$ echo h{1..3}llo
      h1llo h2llo h3llo
      # add fill numbers by using two zeros at the start 
      # (with 1000 at the endpoint it would start with 000)
      pk@pk-lightshow:~$ echo {00..100}
      000 001 002 003 004 [...]
      # with interval
      pk@pk-lightshow:/$ echo h{0..100..25}llo
      h0llo h25llo h50llo h75llo h100llo
      # interval works also with letters
      pk@pk-lightshow:~$ echo {a..f..2}
      a c e
      # can be combined as well
      pk@pk-lightshow:/$ echo {a..z}{a..z}{0..9}
      aa0 aa1 aa2 aa3 aa4 aa5 aa6 aa7 aa8 aa9 ab0 ab1 ab2 ab3 ab4 ab5 ab6 ab7 ab8 ab9 ac0 ac1 ac2 ac3 ac4 ac5 ac6 ac7
      ac8 ac9 ad0 ad1 ad2 ad3 ad4 ad5 [...]
      # useful for example for creating whole directory structures with one command:
      pk@pk-lightshow:~$ mkdir -p tmp/somedirectory/{config,data}


- command substitution: `$([command])` or `` `[command]` `` takes output of command and return it as a string., e.g. 
  `echo it is $(date)` or ``echo it is `[date]` ``
- `Ctrl-R`: type command / search term and press ctrl-r to cycle through command line history; press enter to redo
    current command or tab to edit before executing
- show command `history` and execute a line from it using `![nr]`, e.g. `!150`
- execute previous command with `!!`. Good when forgetting to sudo a command: `sudo !!` 

#### Bash scripting basics

Executable scripts start `#!`(*shebang*) with the path to the interpreter, e.g. `#!/usr/bin/python`.

In case of bash scripts, this is `#!/usr/bin/env bash` (why env bash?).

Scripts can be run using `bash script.sh` or directly when made executable by setting the executable bit (`chmod +x 
script.sh`).

Example script:

    #!/usr/bin/env bash
    myvar=42
    # read variable with a prompt
    read -p "What is your name? " name
    # variables are refered to with a dollar sign
    echo "Hello, $name, the meaning of life is $myvar"
    # command substitution as usual
    echo "And the date is $(date)"

#### The bash prompt

Usual format: `username@hostname:currentDirectory$`, e.g. `pk@pk-lightshow:~/projects/linux$`

The prompt can be set using the PS1 environment variable in the ~/.bashrc file

    echo $PS1
    \[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$

[online bashrc prompt generator](http://bashrcgenerator.com/)

To temporarily (only in the current session), use `export PS1="[prompt code]"`

e.g.

    pk@pk-lightshow:~$ export PS1="\[\033[38;5;12m\]\u\[$(tput sgr0)\]\w:\[$(tput sgr0)\]"
    pk~:

PS2 defines the prompt displayed for line continuation.

#### Bash output redirection

3 basic streams: 0 stdin (default: keyboard input), 1 stdout (terminal), 2 stderr (terminal).

Redirectors:

- `|` pipe output to a command, e.g. `ls -l | grep doc` to show only directory names containing "doc"
- `>` redirect output to a file (replace content if it exists)
- `>>` redirect output and append to a file
- `<` use file as input
- `<<` ("here document") take input until token: `wc << EOF` reads input until end of file (ctrl-D, or "EOF")
      
      
      # EOF is an arbitrary string here
      pk@pk-lightshow:~$ wc << EOF
      > blab blubb
      > EOF
      1  2 11

Example of finding files but redirecting all error messages (as the user doesn't have access to all folders) to null:

    find / -name "linux"  2>/dev/null

#### Bash expansion and substitution

Same as under [exploring bash](#exploring-bash).

Create 30 files with expansion

    pk@pk-lightshow:~/tmp$ touch file{a..c}{1..10}.log
    pk@pk-lightshow:~/tmp$ ls
    filea10.log  filea5.log  fileb10.log  fileb5.log  filec10.log  filec5.log
    [...]

Create multiple directories:

    mkdir /home/pk/tmp/{logs,cache,wads}
    mkdir -p /home/pk/tmp/{a..z}/{1-100}/{z..a}

- `~` = user's homefolder (e.g. `/home/pk`)
- `$(command)` -> command substitution (command output can be used as argument)

#### Bash aliases and functions

Both aliases and functions have to be added to the .bashrc file to be permanent of course.

##### Aliases

- `alias lg="ls -l --group-directories-first"` assigns the ls command with parameters to the `lg` alias
- `alias` shows assigned command aliases
- `alias [command]` shows specific alias information (e.g. `alias ll`)
- if a command is overwritten with an alias, the original command can be executed with a `\`, e.g. `\ls`
- remove with `unalias [command]`

##### Functions

`function greplog () { grep $1 /var/log/syslog; }`

#### Bash arithmetic and equality operators

Arithmetics (ONLY integers) must be enclosed by two brackets:

    pk@pk-lightshow:~/tmp$ echo $(( 2**16 ))
    65536

Supported operators: `+, -, *, /, **, %`

Equality operators in a nutshell:

![equality operators](readme_images/euqality_operators.png)

Boolean operators to check files and folders:
    
    # the spaces before and after [ and ] are important!
    if [ -e myfile ]; then echo "file exists"; fi

    # spacecheck.sh
    #!/usr/bin/env bash
    space=$(df -k / | awk 'FNR == 2 {print 4}')
    if [ $space -lt $((50*1000*1000)) ]
    then
      echo "/ has LESS than 50 GB available"
    else
      echo "/ has MORE than 50 GB available"
    fi

#### System logs

- keep track of system activity
- Text logs
  - stored in `/var/log`; noteworthy log: `syslog` (managed by `rsyslog`) (Red Hat: `/var/log/messages`)
- Binary logs
  - accessed through `journalctl`
  - managed by systemd-journald
  - easy to query:
    - show only specific lines with `journalctl -u [searchstring]`
    - show errors since last boot: `journalctl -b --priority=3`
- Other application logs
  - Package manager: `/var/log/dpkg.log`
  - Activities requiring authorization: `/var/log/auth.log`

Using `less` to view a log, we can use `f` and `b` to go forward and backward, `/` to search, enter for next match, 
`/` + enter for new search. Show only lines containing a search term by typing `&/searchterm`, to exit `&` again.

System logs are handled by `rsyslogd`, which can be configured in `/etc/rsyslog.conf`.

We can write to the system logs by using `logger`:

    pk@pk-lightshow:~/tmp$ logger "hey there"
    pk@pk-lightshow:~/tmp$ tail -1 /var/log/syslog
    Aug 25 18:28:14 pk-lightshow pk: hey there

`rsyslog` can be configured to send and accept logs over the network.

Logs rotate and get archived into compressed files, this can be configured in `/etc/logrotate.conf` and 
`/etc/logrotate.d`.

Archived files can be viewed with `zcat` and `zless`

#### System startup

POST + boot -> Bootloader (Grub, LILO) -> Startup (SysV Init, Systemd)

First, the system's firmware locates bootable instructions on media and executes them.

Then, the bootable code loads further bootable software.

#### Grub

- Grand Unified Bootloader
- provides a menu for user-configurable boot options, an interactive shell and troubleshooting options.
- Grub then loads the kernel from the /boot filesystem and hands off control.
- Will look automatically to other bootable OSs on the system
- 
Configuration options:

- Scripts in `/etc/grub.d`, configuration file in `/etc/default/grub`
- changes must be prepared with `grub2-mkconfig`

#### SysV init

- Initialization system responsible for starting and controlling processes. Most current distros use `Systemd`.
- Init runs as PID 1 and is the parent process of all other processes on the system.
- Runlevels represent discrete operational states: ![runlevels chart](readme_images/runlevels.png). Runlevel can be 
  viewed with `runlevel`, which shows the previous (N=none) and current runlevel. A runlevel can be set with `init`. 
- Each runlevel has scripts to be run at specific runlevels in `/etc/init.d`.
- The scripts provide a header to indicate at which runlevel they should be started / stopped:

      ### BEGIN INIT INFO
      # Provides:          rsyncd
      # Required-Start:    $remote_fs $syslog
      # Required-Stop:     $remote_fs $syslog
      # Should-Start:      $named autofs
      # Default-Start:     2 3 4 5
      # Default-Stop:
      # Short-Description: fast remote file copy program daemon
      # Description:       rsync is a program that allows files to be copied to and
      #                    from remote machines in much the same way as rcp.
      #                    This provides rsyncd daemon functionality.
      ### END INIT INFO

- The scripts are linked into directories `/etc/rc0.d` to `/etc/rc6.d` corresponding to their runlevels. Links 
  starting with "S" indicate that the "start" section of the script should be run at the specific runlevel, a "k" 
  means the script should be killed at this runlevel. The number behind the letter indicates the relative order the 
  scripts should be run in.


    pk@pk-lightshow:/etc$ ls -l rc4.d/
    total 0
    lrwxrwxrwx 1 root root 17 Aug  7 18:04 K01apache2 -> ../init.d/apache2
    lrwxrwxrwx 1 root root 29 Aug  7 18:04 K01apache-htcacheclean -> ../init.d/apache-htcacheclean
    lrwxrwxrwx 1 root root 15 Sep  6  2019 S01acpid -> ../init.d/acpid
    lrwxrwxrwx 1 root root 17 Sep  6  2019 S01anacron -> ../init.d/anacron
    lrwxrwxrwx 1 root root 22 Sep  6  2019 S01avahi-daemon -> ../init.d/avahi-daemon
    lrwxrwxrwx 1 root root 19 Sep  6  2019 S01bluetooth -> ../init.d/bluetooth
    [...]

- Own scripts can be put into `/etc/rc.local` (*seems to be missing in mint?*)
- The scripts can be run by hand using `sudo service [servicename] [args]`, e.g. `sudo service networking restart`

#### Systemd

- System and service manager used by most linux system
- acts as init system during startup (and replaces SysV)
- Manages services after a system has started

- After kernel startup, systemd takes responisibility for starting process
- Starts as PID 1, parent of all other processes
- Takes the system through various targets (the equivalent to runlevels) to the desired state / target (usually 
  "graphical")
- Targets are composed of units which each define a process a service; units can run in parallel, speeding up the 
  startup process.

Noteworthy targets:

- Emergency: read-only root filesystem access and basic tools
- Recue: r/w filesystem and some system services

Units can be viewed, stopped, started, enabled and disabled with `systemctl`, a specific unit with `systemctl status 
[unitname]`.

#### Cron

- Runs tasks periodically.
- reads a list of tasks every minute and runs them appropriately
- cron reads from 3 places:
  - /var/spool/cron
  - /etc/cron.d
  - /etc/crontab
    - the default entries here refer to directories with shell scrips in e.g. `/etc/cron.daily`
    - User scripts can be put in these directories
  - Root scripts with specific timings should be put into `/etc/cron.d`
  - User scripts can be added with `crontab -e`, which starts an editor with a nice template

Crontab format

![crontab format](readme_images/crontab.png)

Cron tasks only run when the system is powered on; when it's off during the scheduled time, it doesn't catch up and 
runs scripts scheduled earlier when it's turned on. For this, `anacron` is used. Anacron rus daily, while cron runs 
every minute.
Tasks for anachron are defined in `/etc/anacrontab`

#### chroot

- Isolates a process from the rest of the filesystem
- sets an effective root directory the process can't see out of
- anything needed to run must be present in the chroot, typically `/sys, /proc, /bin` need to be mountet in the new 
  chroot directory
- copy needed files into place
- to see what dependencies a program has, use `ldd`

      pk@pk-lightshow:/etc/cron.d$ ldd /bin/bash
      linux-vdso.so.1 (0x00007ffdcfbf4000)
      libtinfo.so.5 => /lib/x86_64-linux-gnu/libtinfo.so.5 (0x00007fa7cc701000)
      libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007fa7cc4fd000)
      libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fa7cc10c000)
      /lib64/ld-linux-x86-64.so.2 (0x00007fa7ccc45000)

- often used for system rescue / live boot or test software only with defined dependencies

#### User and group management

- Users = humans or services
- groups: organizational units of users
- Users are defined in `/etc/passwd`
- users with id 1000+ are regular / human users
- File rights are based on the numeric user ID, not the login name! So be careful when deleting and adding a user 
  with the same numeric ID.

/etc/passwd:

`[username]:[user has encrypted password in /etc/shadow file]:[userID]:[id of primary groups of user]:[gecos (name, 
phone etc)]:[users home folder]:[users shell]`

e.g. `pk:x:1000:1000:pk,,,:/home/pk:/bin/bash`

/etc/shadow:

`[username]:[encrypted password OR *=disabled, !=locked]:[days since last pw change]:... other expiry settings`

e.g. `cups-pk-helper:*:18106:0:99999:7:::`

/etc/group:

`[groupname]:[group password, unused]:[comma separated usernames]

Commands to show user or group info: `id`, `groups`, `getent [group|services|passwd|...]`

- Adding a user: `sudo adduser [username]` creates user, group and home from `/etc/skel` home folder template
- Adding a group: `sudo addgroup [groupname]`
- Add user to group (and other user related tasks): `sudo usermod -aG [groupname] [username]`; example (add user to 
  sudo group): `sudo usermod -aG sudo pk`
- `usermod` is used to all other user related tasks (change login name, password etc.).
- Change user password with `passwd`.
- Delete group / user with `delgroup` / `deluser` (home dir will still exist)

#### Service management

- managed by system (systemd), managed by user by `systemctl`. Info on units (see [systemd](#systemd) section).
- Unit configuration files in `/lib/systemd/system/`, e.g. `/lib/systemd/system/rsyslog.service`; own units can be 
  added here as well.  

Common systemctl commands (from https://askubuntu.com/questions/19320/how-to-enable-or-disable-services):

- `sudo systemctl start SERVICE`: Use it to start a service. Does not persist after reboot
- `sudo systemctl stop SERVICE`: Use it to stop a service. Does not persist after reboot
- `sudo systemctl restart SERVICE`: Use it to restart a service
- `sudo systemctl reload SERVICE`: If the service supports it, it will reload the config files related to it without interrupting any process that is using the service.
    systemctl status SERVICE`: Shows the status of a service. Tells whether a service is currently running.
- `sudo systemctl enable SERVICE`: Turns the service on, on the next reboot or on the next start event. It persists after reboot.
- `sudo systemctl disable SERVICE`: Turns the service off on the next reboot or on the next stop event. It persists after reboot.
    systemctl is-enabled SERVICE`: Check if a service is currently configured to start or not on the next reboot.
    systemctl is-active SERVICE`: Check if a service is currently active.
    systemctl show SERVICE`: Show all the information about the service.
- `sudo systemctl mask SERVICE`: Completely disable a service by linking it to /dev/null; you cannot start the service manually or enable the service.
- `sudo systemctl unmask SERVICE`: Removes the link to /dev/null and restores the ability to enable and or manually start the service.


#### Backup with rsync

- copies files from a to b
- synchronize folders
- skip unchanged files

- Basic incremental backup: `rsync -avz * /media/pk/usb-disk`
- rsync can use network and remote paths

#### Splitting and combining files

    pk@pk-lightshow:~/Pictures/sky$ md5sum sky.jpg
    a02179066495e5ed4303336170845d6a  sky.jpg
    pk@pk-lightshow:~/Pictures/sky$ split -b 100KB sky.jpg -d sky.jpg.part
    pk@pk-lightshow:~/Pictures/sky$ ls
    sky.jpg         sky.jpg.part01  sky.jpg.part03  sky.jpg.part05
    sky.jpg.part00  sky.jpg.part02  sky.jpg.part04
    pk@pk-lightshow:~/Pictures/sky$ cat $( ls sky.jpg.part* ) >> sky_reassembled.jpgpk@pk-lightshow:~/Pictures/sky$ echo "a02179066495e5ed4303336170845d6a  sky.jpg" | md5sum -c
    sky.jpg: OK


#### Environment configuration files

Types of shells:

![Types of shells](readme_images/shelltypes.png)

File(s) read by bash:

- Login shell: *one of* (the first found in `~/`)
  - /etc/profile
  - ~/.bash_profile
  - ~/.bash_login
  - ~/.profile # non-bash settings, like PATH variable etc

- Non-Login shell ("*rc" = "run commands")
  - /etc/bash.bashrc # system settings
  - ~/.bashrc # user level settings, bash related settings such as PS1, aliases etc

The scripts usually reference each other, so login shells include settings from non-login shells and vice versa 
(probably not true generalized like this)

Additional definitions read by /etc/profile in `/etc/profile.d`

#### Dotfiles

User customized configuration files and directories in home folder such as `~/.profile`, `~/.vimrc`, `~/.ssh/`.

They can be re-read in the current shell using e.g. `source .profile`.

#### Path variable explored

- `$PATH` contains directories where the shell looks for **executables** (in the order they are defined; use `which 
[command]` to see which one is executed). 
- The initial PATH comes from /etc/environment
- Add paths (temporarily in the shell) with `export PATH=[new directory]:$PATH` or `$PATH:[new directory]` to add it to 
the end.
- Use `PATH=[directory]:$PATH` in `.profile` for permanent paths for the current user.
- These don't affect sudo commands. Change the sudoer path with `sudo visudo`.

#### Browsing with the directory stack

- Using `cd`
  - `cd` to go to user's home dir, 
  - `cd -` to go to the previous directory
    - Using the directory stack
      - Create a list of directories to move between quickly
      - add directories with `pushd` and remove with `popd`, view with `dirs`, clear with `dirs -c`

#### Finding and locating files

- `find` actively searches (with the user rights), e.g. `find / -name "*.png"`
- `locate` uses a daily updated file database (force update with `sudo updatedb`), e.g. `locate -i *.png` (`-i` = case 
  insensitive); use `-b` to 
  indicate that the file should *start* with the search string (as opposed to being a substring).

#### Working with swap 

- swap space can be file or partition
- `swapon` manages / shows (`-v`option) swap ressources, `swapoff` removes resources from the swap pool, `mkswap` 
  sets up a file or partition as swap

Adding a file to the swap pool:

    # create empty file; if=input file, of=output file, bs=block size, count= num blocks
    sudo dd if=/dev/zero of=/secondaryswap bs=1M count=2048
    # make it a swap file
    sudo mkswap /secondaryswap
    sudo chmod 0600 /s
    sudo swapon /secondaryswap

#### Read and write caches

- force writes to disk with `sync`
- view write operations with `iotop`
- disable write cache on e.g. sdb with `hdparm -W 0 /dev/sdb`, enable with `hdparm -W 1 /dev/sdb`
- mount a disk without a write cache: `mount -o sync /dev/sdb /mnt/mydisk`

#### Terminals / consoles / TTYs 

- A terminal emulator provides a text based environment (usually to run a shell) in a graphical desktop environment.
- Open text based full screen console(s) (not terminal emulator) from desktop with `ctrl-alt-F1 (to F6)`, back to 
  desktop with `ctrl-alt-F7`.
- View sessions with `who` (tty7 or :0 = desktop)
- pts = remote ssh sessions (?)

#### Exploring journalctl

- Query the systemd journal with `journalclt`; add `-u [unitname]` to view journal of specific units.
- specify priority with `-p [0-x]`
- specify iso date or timeframe: `journalctl -p 3 --since "2021-08-27 00:00:00"` or `journalctl -p 3 --since "1 hour 
  ago"`

### Filesystem basics

#### Files on linux

- Bits stored in blocks, managed by the filesystem (including metadata such as size, permissions, dates..). 
  Locations of blocks are stored in inodes, indodes are kept in an inode table. File in the file tree are hardlinks 
  to the files inode.

  - File formats in linux are recognized by a "magic number" representing what's in a file. The `file` command can be 
    used to read the metadata / magic number in the file header (the extension is just part of the filename). Use 
    `stat` to display filesystem information about a file.

        pk@pk-lightshow:~/Pictures$ file Selection_115.png
        Selection_115.png: PNG image data, 600 x 234, 8-bit grayscale, non-interlaced
        pk@pk-lightshow:~/Pictures$ stat Selection_115.png
        File: Selection_115.png
        Size: 44648           Blocks: 88         IO Block: 4096   regular file
        Device: 821h/2081d      Inode: 12337485    Links: 1
        Access: (0664/-rw-rw-r--)  Uid: ( 1000/      pk)   Gid: ( 1000/      pk)
        Access: 2021-08-29 07:54:46.226274231 +0200
        Modify: 2021-08-27 10:49:07.493838761 +0200
        Change: 2021-08-27 10:49:07.493838761 +0200
        Birth: -

#### Archives

- tar (tape archive) combines files to be read linearly
  - this file is then (usually) gzip compressed
  - base command: `tar c(reate)f(ile) [archiven.tar] [path/files]`
  - view content of tar with `tar tf [archiven.tar]`
  - extract with `tar xf [archive.tar]`, add  `-C [path]` to indicate a folder other than the current; tar will figure 
    out if the archive is compressed by itself.
  - compress with `z` (bzip): `tar cfz archive.tar.gz *.png`; 
- `zip` / `unzip` as usual

#### Permissions 101

POSIX permissions scheme

`ls -l` output:

[unix file type][user permissions][group perm.][others perm.] [owner] [group] [size] [last modified] [name]

Interpretation:

- unix file types:
    - d : directory
    - s : socket
    - p : pipe
    - D : Door (only used in solaris)
    - l : symbolic link etc.
- permissions: [(r)ead (w)rite e(x)ecute]

Change permissions with chmod, either symbolic or in octal notation:

Symbolic:
![chmod symbolic](readme_images/chmod1.png)

Octal:
![chmod symbolic](readme_images/chmod2.png)

#### Loop devices

- file that contains a file system; examples:
  - ISO images
  - snaps
  - disk images (macOS)

Create a loop device with `dd` or `fallocate`, create a filesystem with `mkfs.[filesystem]`; make it sparse (only 
taking up as much space as needed for the files in it) with `fallocate -d [image]` (it will still show the filesize 
indicated on creation; `du [loop device filename]` shows the real size.

Loop devices are listed in /dev


    pk@pk-lightshow:~$ fallocate -l 1G myimage
    pk@pk-lightshow:~$ ls -l my*
    -rw-rw-r-- 1 pk pk 1073741824 Aug 29 08:29 myimage
    pk@pk-lightshow:~$ sudo mkfs.ext4 myimage
    mke2fs 1.44.1 (24-Mar-2018)
    Discarding device blocks: done                            
    Creating filesystem with 262144 4k blocks and 65536 inodes
    [...]
    ~$ fallocate -d myimage
    ~$ du -h myimage
    648K    myimage
    ~$ sudo mkdir /mnt/myfiles
    ~$ sudo mount myimage /mnt/myfiles
    ~$ cd /mnt/myfiles/
    /mnt/myfiles$ sudo chmod 777 .
    /mnt/myfiles$ touch file_{1..10}.txt
    /mnt/myfiles$ ls
    file_10.txt  file_1.txt  file_2.txt  file_3.txt  file_4.txt  file_5.txt  file_6.txt  file_7.txt  file_8.txt  file_9.txt  lost+found
    /mnt/myfiles$ ls -l /dev/loop*
    brw-rw---- 1 root disk  7,   0 Aug 29 07:07 /dev/loop0
    brw-rw---- 1 root disk  7,   1 Aug 29 07:07 /dev/loop1
    [...]
    pk@pk-lightshow:~$ sudo umount /mnt/myfiles 
    pk@pk-lightshow:~$ rm myimage

#### Configuring group file shares

When making a folder writable by all users, files inside will still be owned / writable only by the creator.

Solution:
- create a group: `sudo addgroup filesharers`
- add user(s) to group: `sudo usermod -aG filesharers [username]`; (affected user must usually log out and in for 
  this to work. Use `id` to see groups the user is assigned to).
- check settings for how files are created for the current logged in user with `umask` or `umask -S`.
- set it so (for the current user in the current session only) that the group members get read/write (and in case of 
  services like apache also 
  execute access (?)): `umask 002`


From wikipedia:

    $ umask 007    # set the mask to 007
    $ umask        # display the mask (in octal)
    0007           #   0 - special permissions (setuid | setgid | sticky )
                   #   0 - (u)ser/owner part of mask
                   #   0 - (g)roup part of mask
                   #   7 - (o)thers/not-in-group part of mask
    $ umask -S     # display the mask symbolically
    u=rwx,g=rwx,o=

The `u=rwx,g=rwx,o=` format can also be used as umask argument. 

![umask octal digits](readme_images/umask_octal.png)

See [here](https://en.wikipedia.org/wiki/Umask) for more.

TODO: Find out how to best do this so the docker apache and the hosts user have the same read / write permissions on 
shared directories.

This will probably involve setting / changing group or user IDs in docker so they comply with the ones on the host 
system.

[This article](https://www.cyberciti.biz/faq/linux-change-user-group-uid-gid-for-all-owned-files/) might be helpful.

#### Managing space in the file system

- `df -h`: high level view 
- `sudo du -hd1 /`: shows sizes of directories, human readable, up to 1 level deep  
- `du -hd0 /etc` or `du -sh /etc` just shows the size of `/etc`
- `sudo find / -type f -size +100M -exec ls -sh {} \;` finds files larger than 100MB and displays them in a human 
  readable form.

#### Overlay file systems (mounts)

Mounts a filesystem on top of another:

![Overlay mount](readme_images/overlaymount.png)

Newly created files will be added to the upper filesystem. For conflicting (existing) filenames, the upper filesystem 
will be used.

When a file from the lower filesystem is modified, it will be copied to the upper filesystem (the one on the lower 
will be untouched - copy on write).

    ~/tmp$ mkdir fs_a fs_b
    ~/tmp$ touch fs_a/a_file_{0..5}
    ~/tmp$ touch fs_b/b_file_{0..5}
    ~/tmp$ echo "This is on filesystem A" > fs_a/myfile
    ~/tmp$ echo "This is on filesystem B" > fs_b/myfile
    ~/tmp$ mkdir working
    ~/tmp$ mkdir myoverlay
    # myoverlay is the actual filesystem to be used
    # NO SPACES after commas in the parameters after -o!
    ~/tmp$ sudo mount -t overlay overlay -o lowerdir=fs_a,upperdir=fs_b,workdir=working myoverlay
    ~/tmp$ cd myoverlay/
    ~/tmp/myoverlay$ ls
    a_file_0  a_file_1  a_file_2  a_file_3  a_file_4  a_file_5  b_file_0  b_file_1  b_file_2  b_file_3  b_file_4  b_file_5  myfile
    ~/tmp/myoverlay$ cat myfile
    This is on filesystem B
    ~/tmp/myoverlay$ nano a_file_0 # type some text
    ~/tmp/myoverlay$ cat ../fs_b/a_file_0 # copy to upper on write
    Hey this will change to filesystem b!
    ~/tmp/myoverlay$ cat ../fs_a/a_file_0 # empty file unchanged
    ~/tmp/myoverlay$
    :~/tmp/myoverlay$ cd ..
    :~/tmp$ sudo umount myoverlay


Uses: 

- embedded systems for filesystem protection of underlying read-only OS filesystem
- container solutions such as docker
- live boot disks

#### Bind mounts

- mount part of a filesystem in a specified place
- used when chrooting to rescue a system
- can be used to scope access
- offer a read-only copy of a filesystem
- temporarily mask or replace a file by another


      :~/tmp$ mkdir mylogs
      :~/tmp$ sudo mount --bind /var/log mylogs
      :~/tmp$ ls -l mylogs/ 
      # these are the same files as in /var/log, so deleting one in either place 
      # will delete it  from both (or does it copy on write? confused.)!
      total 15128
      -rw-r--r--  1 root              root              11241 Aug 22 11:01 alternatives.log
      -rw-r--r--  1 root              root               2394 Jul 24 16:46 alternatives.log.1
      [...]
      pk@pk-lightshow:~/tmp$ sudo umount mylogs

This also works with files and does copy-on-write:

    pk@pk-lightshow:~/tmp$ echo "this is the original file" > file1
    pk@pk-lightshow:~/tmp$ echo "this is the OTHER file" > file2
    pk@pk-lightshow:~/tmp$ sudo mount --bind file2 file1
    pk@pk-lightshow:~/tmp$ cat file1
    this is the OTHER file
    pk@pk-lightshow:~/tmp$ sudo umount file1
    pk@pk-lightshow:~/tmp$ cat file1
    this is the original file

#### Modifying the file system table

- located at /etc/fstab
- tells the system what to do with filesystems on various devices
- often used to automount storage on system startup

From the comment block at the top of the fstab file:

`<file system> <mount point>   <type>  <options> <dump>  <pass>`

- <file system>: identifiers such as 
  - /dev/sdb1, (path to device in dev file system that identifies a disk or partition)
  - //10.0.2.5\storage, (network address, smb...)
  - UUID=123-345..., ID that doesn't change if the device node changes; ID can be shown by `sudo blkid`  
- <mount point>: such as `/mnt/sdb5`
- <file system type>: ext4, ntfs etc. Can be listed with `sudo lsblk -f`
- <mount options>: varies by file system; defaults (most also available with `no-` prefix:
  - rw: mount read/write
  - suid: file system can allow SUID bits
  - dev: file system will recognize block or character devices
  - exec: files can be executed on the file system
  - (no-)auto: file system mounts automatically at boot
  - nouser: can only be mounted by admin users
  - async: fs uses async I/O
  - all mount options in `man mount`
- <dump>: usually 0 (1=should be backed up by sump)
- <pass>: check filesystem on mount and in what order (0=no,1=check first,2=check after 1)

![fstab examples](readme_images/fstab_examples.png)

#### Sticky bit (restricted deletion flag)

- Marks a directory so that it can be read, edited and excecuted by everyone (`drwxrwsrwx `), but files in it can 
  **only** 
  edited deleted by the  creator. 
- Useful for shared directories such as `/tmp`.
- Set sticky bit using `sudo chmod 1777 [directory]` or `sudo chmod o+t [dir]` -> `drwxrwsrwt` (notice the "t" at the 
  end)


    pk@pk-lightshow:/srv/shared$ touch hey
    pk@pk-lightshow:/srv/shared$ su testuser
    testuser@pk-lightshow:/srv/shared$ rm hey
    rm: remove write-protected regular empty file 'hey'? y
    testuser@pk-lightshow:/srv/shared$ touch heyhomadebytestuser
    testuser@pk-lightshow:/srv/shared$ su pk
    pk@pk-lightshow:/srv/shared$ sudo chmod o+t ../shared
    pk@pk-lightshow:/srv/shared$ rm heyhomadebytestuser
    rm: remove write-protected regular empty file 'heyhomadebytestuser'? y
    rm: cannot remove 'heyhomadebytestuser': Operation not permitted

- Folder / files with the sticky bit can be found with `sudo find -perm /1000 2>/dev/null`

#### Access control list (ACLs)

- allows more granular control over access permissions
- grant differing access to more than one user or group
- Requires a file system that supports it
- Items with ACLs are marked with a `+` at the end of the normal permissions: `-rw-rwxr--+`
- Commands:
  - `setfacl`
    - `setfacl -set` replaces existing ACL
    - `setfacl -m` modifies existing ACL
    - `setfacl -x` removes an ACL, e.g. `setfacl -x u:pk testuserfile`
    - Examples:
      - `setfacl -m u:alex:r myfile` gives read permissions to user alex
      - `setfacl -m g:marketing:rw myfile` gives read/write permissions to group marketing
  - `getfacl [file]` shows an items ACLs

### Working with text

#### vim

Just do the included `vimtutor` command for the very basics.

#### Emacs

- start with `emacs` or `emacs -nw` for the console version
- How to read the keyboard commands in emacs: 
  - `C-h r`: press `ctrl-h`, release (ctrl can be kept pressed), press `r`
  - `M` is the meta key or escape key
- Press enter on underlined links to go to the page
- Works with buffers and frames
- Tutorial: `ctrl-h t`

#### nano

Mostly self explanatory easy simple editor.

`^` = `ctrl`
`M` = `alt`
`alt-entf` = delete current line

#### grep

- `grep [string] [file]`: searches file for string
- `grep --color=auto`: colorizes output of found items
- `grep -n`: shows the line numbers of search result
- `grep -C [n]`: shows n surrounding lines of result
- `grep -i`: case insensitive
- `grep -v`: invert search (show only lines NOT matching string)
- `[command] | grep [string]`: search command output (pipe into grep)
- `grep -a`: treats binary files as text (though better use `strings [file] | grep [string]`)

#### RegEx

Nothing new here

#### Sed (stream editor)

- commonly used in command pipelines and scripts
- parameters are defined in the parameter string at the beginning

Operations on whole lines: 

    :~/tmp$ for ((i=1; i<=3; i++)); do echo "line ${i}"; done > mytext
    :~/tmp$ cat mytext 
    line 1
    line 2
    line 3
    # a is the append "parameter"
    :~/tmp$ sed "a new line after each" mytext
    line 1
    new line after each
    line 2
    new line after each
    line 3
    new line after each
    # the original file isn't changed, all goes to stdout
    :~/tmp$ cat mytext 
    line 1
    line 2
    line 3
    # (i)nsert
    :~/tmp$ sed "i new line BEFORE each" mytext 
    new line BEFORE each
    line 1
    new line BEFORE each
    line 2
    new line BEFORE each
    line 3
    :~/tmp$ sed "3i new line BEFORE line 3" mytext 
    line 1
    line 2
    new line BEFORE line 3
    line 3
    :~/tmp$ sed "1d" mytext # delete line 1
    line 2
    line 3
    :~/tmp$ sed "/line 1/a appended after line that matches the \"line 1\" regex" mytext
    line 1
    appended after line that matches the "line 1" regex
    line 2
    line 3
    :~/tmp$

Operations replacing content of lines

    :~/tmp$ sed "s/[Ll]ine/Row/" mytext
    Row 1
    Row 2
    Row 3
    # for greedy match, use /g
    :~/tmp$ sed "s/[aeiou]/\_/g" mytext 
    l_n_ 1
    l_n_ 2
    l_n_ 3
    # replace (why do the "()" have to be escaped?)
    :~/tmp$ sed "s/\([aeiou]\)/[\1]/g" mytext 
    l[i]n[e] 1
    l[i]n[e] 2
    l[i]n[e] 3

#### AWK

- pronounced "awk" as in "hawk"
- language to manipulate text
- extract and transform text

Examples:

    # -e enables interpretation of backslashes, but rather use printf
    :~/tmp$ echo -e "This text file\nhas a few lines\nthat take upp\na little bit of space" > myfile
    :~/tmp$ cat myfile
    This text file
    has a few lines
    that take upp
    a little bit of space
    :~/tmp$ awk '{print $1}' myfile
    This
    has
    that
    a
    :~/tmp$ awk '{print $2 $1}' myfile
    textThis
    ahas
    takethat
    littlea
    :~/tmp$ awk -F : '{print $1}' /etc/passwd
    root
    daemon
    [...]
    :~/tmp$ awk '{print(toupper($1))}' myfile
    THIS
    HAS
    THAT
    A


#### cut and sort

    # cut first field from file delimited by ":" and sort the result
    :~/tmp$ cut -d : -f 1 /etc/passwd | sort
    _apt
    avahi
    avahi-autoipd
    backup
    [...]
    :~/tmp$ cut -b 1-10 /etc/passwd # cut first 10 bytes
    root:x:0:0
    daemon:x:1
    [...]
    # use natural sort order
    :~/tmp$ sudo du -hd1 | sort -h

#### ed

- line editor, mostly used in scripts to make programmatic changes
- I will not bother with this unless I desperately need it

### Package management

#### Basics

(un-)installs software and manages dependencies from repos or packages (`.deb` or `.rpm`)

- Debian, Ubuntu, mint etc: APT (front end for dpkg)
- CentOS, Red Hat: Yum (front end for rpm)
- `sudo apt update` to refresh list of packages
- `sudo apt upgrade` to update installed packages
- `sudo apt list [searchterm]`, `sudo apt show [package]`, `sudo apt search [search term incl. descriptions]` 
- `sudo apt install [package]`
- `apt` is the userfriendly version of `apt-get`

#### aptitude (Debian, ubuntu...)

Menu based terminal front end for software installation and related; supports mouse input where available. Can be 
installed with `apt`. Resolver figures out dependency issues.

![aptitude](readme_images/aptitude.png)

#### dpkg (all debian based distros)

- base for the frontends
- no dependency resolution
- `dpkg --info package.deb`
- `dpkg -i package.deb` to install,
- `dpkg -r package.deb` to remove.
- `dpkg -P package.deb` to purge config files for the software
- `dpkg -contents package.deb` to view files in the package
- `dpkg -L package.deb` to list files installed from the package
- `dpkg -S [file]` to show which package installed a file

#### yum / DNF (frontends for RPM)

Useful commands (both for yum/dnf, using yum here): `yum search`, `yum info`, `yum list available`, `yum install`, 
`yum remove`, `yum update`

#### RPM (Red hat and related)

- base for the frontends

#### Creating packages

    :~/tmp$ mkdir -p myapp_1.0/DEBIAN
    :~/tmp$ nano myapp_1.0/DEBIAN/control
    :~/tmp$ cat myapp_1.0/DEBIAN/control
    `Package: myapp
    Version: 1.0
    Maintainer: pkro <pkro@example.com>
    Architecture: all
    Description: blah`
    :~/tmp$ mkdir -p myapp_1.0/usr/bin # where it should be installed on the user machine
    :~/tmp$ nano myapp_1.0/usr/bin/myapp
    :~/tmp$ cat myapp_1.0/usr/bin/myapp
    `#!/usr/bin/bash
    echo "This is my great new app"`
    :~/tmp$ sudo chown -R root:root myapp_1.0/
    :~/tmp$ sudo chmod -R 755 myapp_1.0/usr/
    :~/tmp$ sudo chmod -R 644 myapp_1.0/DEBIAN/control
    :~/tmp$ dpkg-deb --build myapp_1.0
    dpkg-deb: building package 'myapp' in 'myapp_1.0.deb'.
    :~/tmp$ ls -l *.deb
    -rw-r--r-- 1 pk pk 744 Aug 31 08:45 myapp_1.0.deb

#### Adding third party repos with APT

3rd party repos are kept in `/etc/apt/sources.list` and as individual files in `/etc/apt/sources.list.d`. A repo is 
either in one or the other, not both (it seems).    

Useful for checking 3rd party repos before a distro upgrade.

Otherwise, just follow the maintainers instructions.

#### Hosting a local repository

Repo types: 
- binary vs source repositories, 
- trivial (bare minimum) vs official (all features supported)

A repository contains
- `.deb` files (packages in architecture-specific directories)
- `Packages` file (checksums / metadata for included packages)
- `Release` file (checksum of packages file)
- `Release.gpg` (signature of release file)
- `InRelease` file (inline signed copy of Release file)

Creating a simple repository by hand:

Install `sudo apt install dpkg-dev`.

Create the following folder structure and put the .deb package in the appropriate folder (this is the package we 
created in "creating packages"): 

    myrepo/
    ├── all
    │   └── myapp_1.0.deb
    ├── Packages
    └── Release

We created this folder structure under `/srv`, so all the following commands are done by root (switch to root 
account with `sudo -s`).

    root@pk-lightshow:/srv/myrepo# apt-ftparchive packages . > Packages
    root@pk-lightshow:/srv/myrepo# apt-ftparchive release . > Release
    # check if keys already exit
    root@pk-lightshow:/srv/myrepo# gpg --list-keys
    # if not, create
    root@pk-lightshow:/srv/myrepo# gpg --gen-key
    root@pk-lightshow:/srv/myrepo# gpg --armor --output Release.gpg --detach-sign Release
    root@pk-lightshow:/srv/myrepo# gpg --clearsign --output InRelease Release
    root@pk-lightshow:/srv/myrepo# gpg --output mykey.gpg --armor --export

Folder should now look like this:

    myrepo/
    ├── all
    │   └── myapp_1.0.deb
    ├── InRelease
    ├── mykey.gpg
    ├── Packages
    ├── Release
    └── Release.gpg

Switch back to the normal user (`su pk`).

    pk@pk-lightshow:~$ cp /srv/myrepo/mykey.gpg .
    pk@pk-lightshow:~$ sudo apt-key add mykey.gpg
    # add "deb file:/srv/myrepo /" to sources.list
    pk@pk-lightshow:~$ sudo nano /etc/apt/sources.list
    pk@pk-lightshow:~$ sudo apt update
    Get:1 file:/srv/myrepo  InRelease [1.524 B]
    Get:1 file:/srv/myrepo  InRelease [1.524 B]
    Hit:2 http://archive.ubuntu.com/ubuntu focal InRelease
    [...]
    pk@pk-lightshow:~$ apt show myapp
    Package: myapp
    Version: 1.0
    Maintainer: pkro <pkro@example.com>
    [...]
    pk@pk-lightshow:~$ sudo apt install myapp
    [...]
    pk@pk-lightshow:~$ myapp
    This is my great new app

#### Creating a network APT repository

- host packages for remote clients
- needs a static IP
- setup nearly identical to local repo
- this assumes that apache2 is running and serves from the default folder.

Create a repo on the remote (ssh'd in):

    pk@pi:~$ sudo -s # avoid sudo'ing everything
    root@pi:/home/pk# mkdir /var/www/html/repo
    root@pi:/home/pk# cd /var/www/html/repo
    root@pi:/var/www/html/repo# mkdir all # for all architectures
    # copy repo from local machine to the pi
    root@pi:/var/www/html/repo# scp pk@pk-lightshow:tmp/myapp_1.0.deb ./repo/
    root@pi:/var/www/html/repo# apt-ftparchive packages . > Packages
    root@pi:/var/www/html/repo# apt-ftparchive release . > Release
    # create a key first if it doesn't exist on the server, see previous section
    root@pi:/var/www/html/repo# gpg --armor --output Release.gpg --detach-sign Release
    root@pi:/var/www/html/repo# gpg --clearsign --output InRelease Release
    root@pi:/var/www/html/repo# gpg --output mykey.gpg --armor --export

On the local system (the one that should use the newly created repo on the remote):

    pk@pk-lightshow:~$ wget http://pi/repo/mykey.gpg
    pk@pk-lightshow:~$ sudo apt-key add mykey.gpg
    # touch just to indicate here that it's not an existing file
    # could also be done in the /etc/apt/sources.list file, but this is easier to delete
    pk@pk-lightshow:~$ sudo touch /etc/apt/sources.list.d/my-repository.list && sudo vi /etc/apt/sources.list.d/my-repository.list
    pk@pk-lightshow:~$ cat /etc/apt/sources.list.d/my-repository.list
    deb http://pi/repo /
    pk@pk-lightshow:~$ sudo apt update
    # I receive an error about the key here and the fix doesn't work

#### Mirroring repositories

`apt-mirror` (debian), `reposync` (redhat)

#### Zypper

The Suse linux package manager using RPM packages (?); similar use to apt.

Noteworthy difference: zypper has "patterns", a metapackage / group of packages which, together, provide certain 
capabilities and 
features, e.g. the pattern "devel_web" would contain "Tools and libraries for Web application development." such as 
a LAMPP stack, IDE etc.

#### Using Flatpack

- Sandbox on top of a runtime (KDE, GNOME, Freedesktop)
- cross-distribution desktop apps
- included in mint / software manager, otherwise
  - `sudo apt install flatpack` to install package manager
  - `flatpack remote-add flathub` to add the flathub repository
- commands: `search`, `install [repo] [package in reverse domain notation]`, `list` (installed packages), `info`
- run with `flatpack run [package]`
- update app(s) with `flatpack update`, remove with `remove`, cleanup with `remove --unused`

#### Using snaps

- run on a tiny ubuntu core distro, regardless of host distro
- are made of squashfs file systems with read only and writable portion
- runs isolated from the system unless specifically given access to system ressource, similar to docker
- automatically update
- the usual commands like `snap find`, `snap info` etc., or install the `snap-store` for a graphical UI
- to find installation folder of snaps (which are distro-dependent):
  - `snap list` to list installed packages
  - `which [snap package name]` patch to the symlinks to the actual package locations

#### Package management: PPAs (Personal Package Archives)

- allow distribution of software outside of regular repos
- not vetted for security risks or malware
- hosted on launchpad.net, which includes instructions to add the ppas ![launchpad](readme_images/launchpad.png)
- these are added as individual files under `/etc/apt/sources.list.d` as usual where they can also be removed by 
  deletion

#### Homebrew package management

- cross platform package manager popurlar on macOS, also available on most Linux distros
- install following the instructions at [brew.sh](http://brew.sh) (requires ruby) or the `linux brew wrapper package`
- manager and packages are installed in `/home/linuxbrew`
- command: `brew` (after adding the directory to the path, instructions provided by installer), similar usage to most 
  other package managers
- terminology (as it comes from Mac ecosystem): ![homebrew](readme_images/homebrew.png)

#### Using appimage apps

- allows apps to be distributed in a single executable containing all its dependencies
- distro-independent
- Download the `*.AppImage` file provided by the developer, make it executable, put it wherever you want and start it. 
  That's it.

### Working remotely

#### curl and wget

- curl: can send and receive information using many protocols
  - sends content to stdout per default
  - save to file with `curl [url] -o [filename]` or `-O` to use the filename from the URL
- wget: fault-tolerant, noninteractive downloader
  - `wget [url] -c` to resume an interrupted download  



#### Browsing through a SOCKS proxy server

- SOCKS (SOcket Secure) proxy
  - forwards traffic from client through proxy server
  - can control web access and allow web access from restricted networks

![SOCKS proxy](readme_images/socksproxy.png)

Set up on local machine to use ssh on the remote (pi): `ssh -D [port] [ssh server] -Nq`, e.g. `ssh -D 4321 pk@pi 
-Nq`. Other options: `-f` to fork process into background, `-C` to compress data sent through tunnel.  
= don't open shell, q = quiet mode. Then configure the browser to use the proxy for traffic: 

![SOCKS proxy browser config](readme_images/socks_browserconfig.png)

#### X11 forwarding

- NOT a remote desktop like rdp
- Feature of ssh.
- X.Org window server draws the GUI on the display
- can also draw a remote app's GUI locally


      # Start an X11 forwarding ssh connection 
      pk@pk-lightshow:~/Downloads$ ssh -X pk@pi
      # start firefox on remote machine
      pk@pi:~$ firefox

This starts the GUI part on the local machine (pk-lightshow). Firefox itself runs on the remote (pi).

![X11 forwarded firefox example](readme_images/x11firefox.png)

#### Using a Squid proxy

- allows consolidation of network traffic through one host
- offers ability to filter traffic (sites, ports etc.)
- offers authentication services
- can cache assets (except https traffic, so kind of useless today)
- makes requests on behalf of clients: does not route packets
- package: `squid`
- configuration in `/etc/squid/squid.conf`;
- uses port 3128 per default, so be sure to open it on the server (`sudo ufw allow 3128`) and set it in the browser 
  with that port; the rest is the same as setting up a SQUID proxy.
- squid traffic can be seen in `/var/log/squid/access.log`

Example changes to allow external clients to use the proxy and block some sites:

    # in acl section
    # allow 10.0.2.0 to access proxy; localnet is an arbitrary name
    acl localnet src 10.0.2.0/24
    # block a site
    acl badsites dstdomain .example.com
    # in access section
    # these are evaluated in order
    http_access deny badsites
    http_access allow localnet

#### Using mosh (MObile SHell)

- shell that provides fault-tolerant connection to remote system
- reduces bandwidth
- uses udp
- detects disconnections and automatically reconnects
- uses ssh to set up connection (but uses it's own protocol afterwards)
- combine with `screen` or `tmux` for enhanced resilience

Setup on remote server:

    pk@pi:~$ sudo apt install mosh
    # alternatively, only one port could be configured
    pk@pi:~$ sudo ufw allow 60000:61000/udp

On local machine:
    
    pk@pk-lightshow:~/Downloads$ sudo apt install mosh
    # connect to server
    pk@pk-lightshow:~/Downloads$ mosh pk@pi
    # ...and get probably some locale errors that can be googled and fixe,
    # which i will not do here

#### SSH Reverse tunnel

Uses the same ssh connection to open a ssh connection to the local system (instead of having two separate ssh 
connections, one in each direction, requiring an ssh server also on the local system's side).

I don't really get the advantage otherwise though, and why this is a tunnel and not just a "bidirectional" ssh 
connection.

![Reverse tunnel](readme_images/reversetunnel.png)

### Process management

#### ps

Software runs in processes referred to by a process ID (PID)

Common usage examples (all options can be combined of course):

- `ps` processes in current shell session
- `ps -e` all processes on system (**e**verything)
- `ps -C [command name]` lists processes with that command name (e.g. `ps -C bash`)
- `ps -ef` includes users the processes are running as, and parent processes
- `ps aux` even more information such as cpu and memory consumed by processes
- `ps -ejHF` process tree view (which process started which other processes, starting from pid 1 = `/sbin/init`)
- `ps -U [username]` shows all processes a particular user has started

Processes are communicated with using signals (=messages). List all signals with `kill -l`. Commonly used signal:
`kill -9 [processID]` to kill a process **and all it's child processes**.

#### top

`top` to show processes and resource utilization
- launch with `top -i` to hide idle processes
- non-interactive for batch operation, show only one iteration: `top -b -n 1`
- use arrows to go through processes, see help bar to see common actions (kill etc)
- Load average:
  - `[# processors fully utilized (average) in the last minute] [last 5 minutes] [last 15 minutes]`
  - 1.0 = One processor (core) is fully utilized
  - In a system with 12 cores, a 12.0 would indicate that the processor load is exactly "right" (fully utilized and
    can do everything in time), anything more means some processes have to wait for execution
  - ![load indicator](readme_images/loadindicator.png)
- Third line explanation (`%Cpu(s)`):
  - `us` = percentage of usage by user processes
  - `sy` = % by system processes
  - `ni` = % by "niced" processes (processes whose priority was changed)
  - `id` = % idle
  - `wa` = % waiting for IO
  - `si` = % interrupts
  - `st` = time given back to hypervisor (if in virtual machine)
- Column explanation (where necessary):
  - `PR`: priority
  - `NI`: nice value
  - `VIRT`: virtual memory used 
  - `RES`, `SHR`: resident and shared memory used (?)  
  - `S` State, S = sleeping, R = running
  - `TIME+` cummulative processor time used
- Keyboard shortcuts:
  - `x` turn on highlight, `<` and `>` to select (and sort) column, reverse sort order with `R` (capital!)
  - `r` to re-nice ((de-)prioritize process)
  - others see help (`h`)

#### htop

More "graphical", configurable (F2) console version of top with slightly different information (e.g. full path to 
executable and 
invocation arguments)

#### fg, bg, kill

- Most useful: stop a process and put it in the background, e.g. an editor live vim, using `ctrl-z`,
  do some stuff on  the  command line, go back by typing just `fg`
- Adding `&`, e.g. `./script.sh &` will start the script in the background and display the process number
- Put a background job in the foreground with `fg`
- Check running jobs with `jobs`; put a specific job in the foreground with `fg %[job number displayed by jobs]`
- kill specific jobs with `kill %[job number displayed by jobs]` (multiple possible, e.g. `kill %1 %2`)
- Output of running processes can be seen in `/var/log/syslog`
- background jobs can be put in the foreground again using `fg`
- stopped jobs can be resumed in the background using `bg`

*Stopping a job (not killing it) using `ctrl-z` STOPS the job; it only continues running if you put it in the 
background using `bg [optional processid or %number]`*

The processes are still child processes of the bash session that started it. To make it it's own process, use `disown`

    pk@pk-lightshow:~/$ ./logger.sh
    ^Z[1]   Terminated              ./logger.sh
    [2]+  Stopped                 ./logger.sh
    pk@pk-lightshow:~/$ bg
    [2]+ ./logger.sh &
    pk@pk-lightshow:~/$ disown %2
    [exit terminal and start a new one]
    pk@pk-lightshow:~/$ ps aux | grep logger
    pk         33186  0.0  0.0   9960  3788 ?        S    08:08   0:00 bash ./logger.sh
    pk         33316  0.0  0.0   9368   724 pts/4    S+   08:09   0:00 grep --color=auto logger
    pk@pk-lightshow:~/$ kill 33186

Alternatives for this is using `tmux` or `screen` 

#### Background tasks with nohup / screen / tmux

##### nohup

Lets a process run in the background (you can log out from the terminal / server and it keeps running); Command output is by default to nohup.log in the current directory. Installed by default on most systems.
nohup <command>

##### screen (terminal multiplexer)

Creates multiple (and optionally named) terminals; Usually must be installed first.

Useful for ssh connections so interruptions of the connection don't cause a shell abort of running scripts on the
server / remote.

Usage: `screen`, or better `screen -r` to reattach to an existing screen session if it exists or create a new one.

- Ctrl+key commandkey (press ctrl and key simultaneously, then release and press command key, as in emacs)
- Ctrl+a c -> create a new window / shell
- Ctrl+a " -> list active screens and select with cursor + enter
- Ctrl+a ? -> help
- Ctrl+a A -> rename current screen
- Ctrl+a d -> detach from screen session (shells and processes in shells will continue running, you could log out now)
- screen -r -> resumes a detached screen session
- screen -ls -> find active screen session(s), reattach to a specific one with screen -r <number at front of session name before .pts[...]>

##### tmux (terminal multiplexer)

Does the same thing as screen

- run `tmux` on remote machine, or `tmux -s [sessionname]` to start a named session
- when the connection fails, connect again and run `tmux attach [?session_name]` to reconnect to the running session.
- Most useful key combinations and commands:
- `Ctrl-B c` to create a new window
- `Ctrl-B x` to kill current window
- `Ctrl-B w` to switch between sessions with GUI; kill selected session with `x`
- `Ctrl-B d` to detach from tmux session
- command overview witn `ctrl-B ?`

Show tmux settings with `ctrl-b :show-options -g`, change settins with `ctrl-b :set [setting]=[value]`; make 
settings permanent by creating a `.tmux.conf`


### Security

#### Firewall basics

- Filters network traffic
- Often runs on a local host
- hardware firewalls are just dedicated machines running firewall software
- compares network packets to lists of rules (source/dest address, port etc.)
- most of the time only act on incoming traffic
- two ways to block traffic
  - drop (ignores incoming traffic)
  - reject (notifies the sender of the rejections)
- can be configured to forward / route traffic to another system
- Common firewall packages: iptables / netfilter (Linux) and pf (BSD)

#### iptables

- Packet filter that uses Linux' netfilter to process traffic
- iptables rules are organized into chains: INPUT, OUTPUT and FORWARD (self explanatory)
- packets are matched against rules in the appropriate chains sequentially and applies the defined action if it 
  matches (ACCEPT, DROP etc.); otherwise, the default action is taken
- list rules with `sudo iptables -L`

To edit rules permanently, they must be exported (`sudo iptables-save > my_iptables_rules`), edited and re-imported 
(`sudo iptables-restore > my_iptables_rules`). 
The rule list must end with `COMMIT`, so don't just append rules to the end of the file programmatically.

#### UFW (uncomplicated firewall)

- Front end for netfilter packet filtering software
- show ports / sockets the system is listening on: `sudo ss -anpst` (not directly ufw related)
- front end for iptables that removes the need for cryptic rulesets
- **changes the default iptables policy from ACCEPT to DROP**, so be sure to enable the relevant remote ports such 
  as 22 for ssh when enabling the firewall on a remote machine!
- `sudo ufw enable` adds ufw rules to the existing ones in iptables, 
- `sudo ufw disable` removes them
- `sudo ufw status` shows current rules and if ufw is active
- Examples for setting rules: `sudo ufw allow 443`, `sudo ufw allow 443/tcp`, `sudo ufw allow ssh` 
- Examples for disabling rules: `sudo ufw delete allow 443`, `sudo ufw delete allow ssh` 
- to delete a rule by number, use `sudo ufw status numbered` and delete it with `sudo ufw delete [nr]`
- logs in  `/var/log/ufw.log` (logging must be enabled)


Good overview of commands [here](https://www.linode.com/docs/guides/configure-firewall-with-ufw/)

#### File checksums

Check file integrity using a hash of a file.

Usage to check (md5): `echo "[md5hash] [filename]" | md5sum -c`

#### NTP (Network Time Protocol)

Main timeservers connected to actual time keeping devices (aka "clocks") are called Stratum 1 servers. Stratum 2 are 
servers are connected to the Stratum 1s. Stratum 3s are connected to Stratum 2s (at least 2(?))

Check system synchronization status with `timedatectl`. Another useful tool for checking and setting time server 
information: package `chrony`, command `chronyc`

#### Encrypting files

- symmetric encryption with password: `gpg -c secretfile`, decrypt with `gpg -d [file]`, redirect output to 
  create a file; if the file was created by the same user, the stored key is used automatically
- encryption with keyfile (symmetric or asymmetric)
  - check available system entropy used by `/dev/random`, gathered by the system by different random events such as network 
    activity, mouse movement etc.: `cat /proc/sys/kernel/random/entropy_avail`; sidenote: `/dev/urandom` provides 
    less secure pseudo-random numbers. Processes that need a lot of random numbers might stall if `/dev/random` runs 
    out of entropy (=available real random numbers) 
  - for more entropy, install `rng-tools` that includes random number generation software; add more entropy by using 
    `sudo rngd -fr /dev/urandom`, which basically shovels pseudo random numbers from `urandom` to `random`
  - create a keyfile with `gpg --gen-key`
  - list keys with `gpg --list-keys`
  - encrypt for a specific user that you have the public key imported in the keyring with `gpg -e [file]`, you will get 
    prompted for the user; decrypt again with `gpg -d`
  - import other people's keys with `gpg --import`
  - export own public key with `gpg --export --armor [email] > mypubkey`; `--armor` makes it a text, otherwise it 
    exports a binary

#### Encrypted filesystems

LUKS (Linux Unified Key Setup). Has 8 key slots per volume (backup keys or for other people, `cryptsetup luksAddKey`). 
Encrypts filesystems while not in use. Can only be mounted on Linux.
The header with the keys can be individually backuped with `luksHeaderBackup` and `luksHeaderRestore` options.

    # Example: USB drive with LUKS container
    # delete existing and create new partition
    pk@pk-lightshow:~/projects/linux/linux_notes$ sudo fdisk /dev/sdd
    # delete existing partition
    Command (m for help): d
    # list partitions
    Command (m for help): p
    # create new partition, accept all defaults
    Command (m for help): n
    # write changes to disk
    Command (m for help): n
    # install cryptsetup
    pk@pk-lightshow:~/projects/linux/linux_notes$ sudo apt install cryptsetup
    pk@pk-lightshow:~/projects/linux/linux_notes$ sudo cryptsetup luksFormat /dev/sdd1
    pk@pk-lightshow:~/projects/linux/linux_notes$ sudo cryptsetup luksOpen /dev/sdd1 my_secrets
    pk@pk-lightshow:~/projects/linux/linux_notes$ sudo mkfs.ext4 /dev/mapper/my_secrets
    # mount the drive
    pk@pk-lightshow:~/projects/linux/linux_notes$ sudo mkdir /media/secrets
    pk@pk-lightshow:~/projects/linux/linux_notes$ sudo mount /dev/mapper/my_secrets /media/secrets
    [...]
    # unmount after use
    pk@pk-lightshow:~/projects/linux/linux_notes$ sudo umount /media/secrets
    # close!
    pk@pk-lightshow:~/projects/linux/linux_notes$ sudo cryptsetup luksClose my_secrets

#### AppArmor

- Provides access control for programs and processes on top of user-level security
- enabled by default on ubuntu
- profiles stored in `/etc/apparmor.d/`
- Apparmor modes: enforcement (restricts), complain (logs violations); to change mode for a file in `apparmor.d`, use 
`aa-complain [filename]` and `aa-enforce [filename]` (from apparmor utils).
- `sudo aa-status` does what it says 

#### SELinux

- Securitiy Enhanced Linux
- adds Contexts for access control for files, users and processes (on top of file permissions and ACLs)
- Common SELinux related commands
  - `chcon`: change an items context
  - `restorecon`: reset items context to default
  - `ls -Z`: shows file context information
  - `ps -Z`: shows context of processes

![SELinux context](readme_images/selinux_context.png)

- Moving a file retains its context, copying applies the context of the destination
- Troubleshooting:
  - `ausearch -m avc` check journal for errors
  - set to permissive; `sestatus` to view current mode, `setenforce` to change mode temporarily

#### Firewalls: firewalld

- firewall used on Red Hat, CentOS and Fedora usint "zones"
- Admin command: `firewall-cmd`, service name `firewalld`


### System administration

#### Disks and partitions

- the `s` in sda / sdb etc. stands for "serial"
- some gparted stuff
- don't forget to chown the mount point of the newly created partition, e.g. `sudo chown pk:pk "/media/pk/my files yay"`
- on linux, all filesystems are mounted inside the root filesystem `/`
- on windows, each filesystem appears as separate drives
- on mac, they are called volumes

#### Logical Volume Management

- manage storage volumes flexibly
  - creates logical volumes within volume groups of physical volumes
  - span disks, migrate between disks, resize on the fly
  - LVM maps data in logical extents to physical extents on disk

Moving data between filesystems with LVM:

![lvm1](readme_images/lvm1.png)

![lvm1](readme_images/lvm2.png)

![lvm1](readme_images/lvm3.png)

Doing the above on the shell, all with the filesystem kept online:

    pk@pk-lightshow:~$ sudo apt install lvm2
    # create physical volume
    pk@pk-lightshow:~$ sudo pvcreate /dev/sdd1
    Physical volume "/dev/sdd1" successfully created.
    pk@pk-lightshow:~$ sudo pvdisplay
    "/dev/sdd1" is a new physical volume of "<29,30 GiB"
    # create volume group
    pk@pk-lightshow:~$ sudo vgcreate my_vg /dev/sdd1
    Volume group "my_vg" successfully created
    pk@pk-lightshow:~$ sudo vgscan
    Found volume group "my_vg" using metadata type lvm2
    # create logical volume on my_vg group
    pk@pk-lightshow:~$ sudo lvcreate -l 100%VG -n my_lv my_vg
    Logical volume "my_lv" created.
    pk@pk-lightshow:~$ sudo lvscan
    ACTIVE            '/dev/my_vg/my_lv' [29,29 GiB] inherit
    pk@pk-lightshow:~$ sudo lvdisplay
    --- Logical volume ---
    LV Path                /dev/my_vg/my_lv
    LV Name                my_lv
    VG Name                my_vg
    LV UUID                K3cHks-sod8-e7kB-tZ7q-At9Y-1ACF-iyFSdO
    LV Write Access        read/write
    LV Creation host, time pk-lightshow, 2021-09-15 08:21:32 +0200
    LV Status              available
    # open                 0
    LV Size                29,29 GiB
    Current LE             7499
    Segments               1
    Allocation             inherit
    Read ahead sectors     auto
    - currently set to     256
      Block device           253:0
    # create filesystem on block device
    pk@pk-lightshow:~$ sudo mkfs.ext4 /dev/mapper/my_vg-my_l
    # create mount point and mount it
    pk@pk-lightshow:~$ sudo mkdir /media/lvm-disk
    pk@pk-lightshow:~$ sudo mount /dev/mapper/my_vg-my_lv /media/lvm-disk/
    # for fun, create a large file that takes up most of the space
    pk@pk-lightshow:/media/lvm-disk$ sudo fallocate -l 20GB bigfile
    pk@pk-lightshow:/media/lvm-disk$ ls -l
    total 19531272
    -rw-r--r-- 1 root root 20000000000 Sep 15 08:26 bigfile
    drwx------ 2 root root       16384 Sep 15 08:22 lost+found
    pk@pk-lightshow:/media/lvm-disk$
    # add another partition (sdc2) to the lvm 
    pk@pk-lightshow:/media/lvm-disk$ sudo pvcreate /dev/sdc2
    pk@pk-lightshow:/media/lvm-disk$ sudo vgextend my_vg /dev/sdc2
    Volume group "my_vg" successfully extended
    # move physical data from one physical volume to another
    pk@pk-lightshow:/media/lvm-disk$ sudo pvmove -n my_vg/my_lv /dev/sdd1 /dev/sdc2
    # remove old physical volume from volumegroup
    pk@pk-lightshow:/media/lvm-disk$ sudo vgreduce my_vg /dev/sdd1
    Removed "/dev/sdd1" from volume group "my_vg"
    # extend logical volume to all available space on new drive
    # so far it only takes the same space as needed for the data from the data on sdd1
    pk@pk-lightshow:/media/lvm-disk$ sudo lvextend -l 100%VG /dev/mapper/my_vg-my_lv
    Size of logical volume my_vg/my_lv changed from 29,29 GiB (7499 extents) to 101,32 GiB (25938 extents).
    Logical volume my_vg/my_lv successfully resized.
    # to extend the space of the filesystem on the logical volume, we need to unmount it first
    pk@pk-lightshow:/media/lvm-disk$ cd
    pk@pk-lightshow:~$ sudo umount /media/lvm-disk
    # check filesystem first
    pk@pk-lightshow:~$ sudo e2fsck -f /dev/mapper/my_vg-my_lv
    e2fsck 1.45.5 (07-Jan-2020)
    Pass 1: Checking inodes, blocks, and sizes
    Pass 2: Checking directory structure
    Pass 3: Checking directory connectivity
    Pass 4: Checking reference counts
    Pass 5: Checking group summary information
    /dev/mapper/my_vg-my_lv: 12/1921360 files (0.0% non-contiguous), 408790/7678976 blocks
    pk@pk-lightshow:~$ sudo resize2fs /dev/mapper/my_vg-my_lv
    resize2fs 1.45.5 (07-Jan-2020)
    Resizing the filesystem on /dev/mapper/my_vg-my_lv to 26560512 (4k) blocks.
    The filesystem on /dev/mapper/my_vg-my_lv is now 26560512 (4k) blocks long.
    # remount
    pk@pk-lightshow:~$ sudo mount /dev/mapper/my_vg-my_lv /media/lvm-disk/

#### Create a Raid array

Raid levels:

![raid levels](readme_images/raidlevels.png)

- Can be implemented with hardware controllers or software.
- Software raids are managed by `mdadm`
- RAID devices are referred to as /dev/md0, /dev/md1 etc.
- Time to sync (parity-type RAID levels) scales with the size of the array
- The array syncs blocks, not files

Creating a RAID 5 of 3 20GB devices, = 40 GB capacity and one disk can be lost without harming the data

We should use partitions (that don't span the whole disk size) to get the exact sizes of each unit right.

Partitions (in this test all partitions on the same drive) already created with gparted: sdc2, sdc3, sdc4

    pk@pk-lightshow:~/$ lsblk
    [...]
    ├─sdc2   8:34   0  19,5G  0 part
    ├─sdc3   8:35   0  19,5G  0 part
    └─sdc4   8:36   0  19,5G  0 part
    pk@pk-lightshow:~/$ sudo mdadm --create /dev/md0 --level=5 --raid-devices=3 /dev/sdc2 /dev/sdc3 /dev/sdc4
    [...]
    Continue creating array? y
    mdadm: Defaulting to version 1.2 metadata
    mdadm: array /dev/md0 started.
    # array will be built in the background but can be used immediately
    # check build status
    pk@pk-lightshow:~/$ sudo mdadm --detail /dev/md0
    /dev/md0:
    Version : 1.2
    Creation Time : Thu Sep 16 07:52:06 2021
    Raid Level : raid5
    Array Size : 40925184 (39.03 GiB 41.91 GB)
    Used Dev Size : 20462592 (19.51 GiB 20.95 GB)
    Raid Devices : 3
    [...]
        Rebuild Status : 25% complete[...]
    Number   Major   Minor   RaidDevice State
           0       8       34        0      active sync   /dev/sdc2
           1       8       35        1      active sync   /dev/sdc3
           3       8       36        2      spare rebuilding   /dev/sdc4
    pk@pk-lightshow:~/$
    pk@pk-lightshow:~/$ sudo mkfs.ext4 /dev/md0
    pk@pk-lightshow:~/$ sudo mkdir /media/my_raid
    pk@pk-lightshow:~/$ sudo mount /dev/md0 /media/my_raid/
    # md0 will be mounted automatically as md127 next restart for some reason
    # so we must set it explicitely to md0 in /etc/mdadm/mdadm.conf
    # First, find UUID
    pk@pk-lightshow:~/$ sudo mdadm --detail /dev/md0 | grep UUID
    UUID : 9c34ec78:3b6c8822:adbe72ca:4c2c54b5
    pk@pk-lightshow:~/$ sudo vi /etc/mdadm/mdadm.conf
    # Add the uuid under the section here:
        # definitions of existing MD arrays
        ARRAY /dev/md0 UUID=9c34ec78:3b6c8822:adbe72ca:4c2c54b5
    # update as suggested in mdadm.conf
    pk@pk-lightshow:~/$ sudo update-initramfs -u
    update-initramfs: Generating /boot/initrd.img-5.4.0-84-generic


#### Repairing a RAID array

    # mark disk as failed
    pk@pk-lightshow:~$ sudo mdadm --manage /dev/md0 --fail /dev/sdc2
    mdadm: set /dev/sdc2 faulty in /dev/md0
    pk@pk-lightshow:~$ sudo mdadm --detail /dev/md0
    [...]
        Number   Major   Minor   RaidDevice State
           -       0        0        0      removed
           1       8       35        1      active sync   /dev/sdc3
           3       8       36        2      active sync   /dev/sdc4
    
           0       8       34        -      faulty   /dev/sdc2
    # remove disk from array
    pk@pk-lightshow:~$ sudo mdadm --manage /dev/md0 --remove /dev/sdc2
    mdadm: hot removed /dev/sdc2 from /dev/md0
    pk@pk-lightshow:~$ sudo mdadm --detail /dev/md0
    [...]
        Number   Major   Minor   RaidDevice State
           -       0        0        0      removed
           1       8       35        1      active sync   /dev/sdc3
           3       8       36        2      active sync   /dev/sdc4
    pk@pk-lightshow:~$ # identify failed physical disk to replace it
    pk@pk-lightshow:~$ sudo hdparm -i /dev/sdc2
    /dev/sdc2:
    Model=Samsung SSD 850 EVO 250GB, FwRev=EMT02B6Q, SerialNo=S2R6NX1JC14972X
    [...]
    # replace the faulty disk; here, the new "disk" (just using partitions for this test)
    # will be at sdc2 again
    # Add new disk (this starts a rebuild in the background)
    pk@pk-lightshow:~$ sudo mdadm --manage /dev/md0 --add /dev/sdc2
    # During rebuild, the RAID is in a fragile state as if another disk fails, the data loss
    # will be complete; RAID 6 is recommended
    # check rebuild status as usual with mdadm --detail /dev/md0
    #Cleanup the test raid:
    pk@pk-lightshow:~$ sudo mdadm --stop /dev/md0
    pk@pk-lightshow:~$ sudo mdadm --remove /dev/md0
    pk@pk-lightshow:~$ sudo mdadm --zero-superblock /dev/sdc3 /dev/sdc4

#### Local ip address

- `ip address` shows information for all adapters,
- `ip address show dev [adapter name]` for a specific one
- private and local IP address ranges:
  ![private IP address ranges](readme_images/private_ip_ranges.png)
- If the system gets an 169.254.* address, it can be a sign that DHCP / internet connecion isn't working



    pk@pk-lightshow:~$ ip address show dev enp5s0
    # [...],UP,LOWER_UP = Network up, underlying interface up
    2: enp5s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    # mac address, broadcast address
    link/ether 40:b0:76:5f:3a:0c brd ff:ff:ff:ff:ff:ff
    # ip v4 address, broadcast address
    inet 192.168.178.25/24 brd 192.168.178.255 scope global dynamic noprefixroute enp5s0
    # IP address lease lifetime
    valid_lft 861243sec preferred_lft 861243sec
    # ip v6 address
    inet6 2a01:c23:90b3:0:a963:a62:23bd:cdd5/64 scope global temporary dynamic
    valid_lft 6951sec preferred_lft 3351sec
    inet6 2a01:c23:90b3:0:afa1:927d:e290:d060/64 scope global dynamic mngtmpaddr noprefixroute
    valid_lft 6951sec preferred_lft 3351sec
    inet6 fe80::64d1:aeac:16e:bdf3/64 scope link noprefixroute
    valid_lft forever preferred_lft forev

The network interface name seems somewhat random. Tey are given by "Predictable Network Interface Names" system 
which sets name based on hardware characteristics and connection.

Ethernet and wireless adapters:

![predictable interface names](readme_images/predictable_interface_names.png)


#### DNS

- resolves domain names on a clients request (e.g. opening a page in a browser) to IP addresses
- service maintainer host authoritative DNS records for their domains
- DNS servers can forward requests to other DNS servers and cache the responses
- `BIND` is a common DNS hosting service (service in the sense of process / program)
  - `sudo apt install bind9` (sic)
  - forwards requests and caches responses
  - default configuration perform recursion (looking up entries by querying root servers and authorative servers) for 
    local clients
  - [difference between forwarding and recursion](https://serverfault.com/questions/661821/what-s-the-difference-between-recursion-and-forwarding-in-bind)
  - in the example, we'll change the configuration to forward requests instead of recursion
  - (main) configuration: `/etc/bind/named.conf.options` (8.8.8.8 is google's dns server)

        # changes in /etc/bind/named.conf.options
        forwarders {
                1.1.1.1;
                8.8.8.8;
        };
        forward only;

  - when down, restart bind: `sudo systemctl restart bind9`
  - to open up the dns server externally, open port 53/udp int the firewall

To test the DNS server, use `dig`: `pk@pi:~$ dig @pi linkedin.com`; if you use it again, the query time will be 
close to zero as the result is now cached.


#### VPN

- creates virtual network devices that tunnels network traffic
- encrypted or not
- see "learning vpn" course on linkedin learning

#### Exploring system hardware

- kernel presents system info through virtual filesystems on `/dev` and `/sys`
- tools: `lshw`, `lshw -short` for a shorter report
- specialized: `lsusb`, `lspci`, `lsmem`, `lsblk`, `dmidecode`
- `hdparm` (also sets disk parameters as sudo user); `sudo hdparm -t /dev/[device]` for a quick read benchmark

#### Drivers and modules

- linux kernel supports a lot of hardware (drivers are included in the kernel)
- add support for hardware for non-supported hardware via loadable kernel module
  - download and unpack module
  - install `build-essential` package
  - in module directory, type `make` (not all drivers have make files)
  - the `[modulname].ko` file in the resulting files from the build process can be either copied in `/lib/modules` or 
    enter 
    `sudo make install` and activate the module with `sudo modprobe [modulname]`
  - disable temporarily with `sudo rmmod [modulname]` and / or blacklist it in `/etc/modprobe.d`
  - modules need to be recompiled for new kernels (DKMS can do this automatically)

#### QEMU and KVM

- Allow tp run VMs from the command line
- QEMU is an emulator providing virtual common, widely supported hardware (processors, interfaces etc.) for guests 
  so they don't need drivers out of the box for the specific host hardware
- KVM (kernel-based virtual machine) allows the Linux kernel to act as a hypervisor and provides virtualization that 
  uses the host's real hardware, speeding up the guest system
- both of these are used under the hood by many virtualization solutions 
- VM storage can be either an .iso file. raw device or loop file system

Creating a QEMU VM:

    pk@pk-lightshow:~/$ sudo apt install qemu-system
    # download an OS image, here ubuntu server mini
    pk@pk-lightshow:~$ wget http://archive.ubuntu.com/ubuntu/dists/focal/main/installer-amd64/current/legacy-images/netboot/mini.iso
    # create disk image (sparse file)
    pk@pk-lightshow:~$ qemu-img create -f qcow2 mydisk.qcow2 20G
    Formatting 'mydisk.qcow2', fmt=qcow2 size=21474836480 cluster_size=65536 lazy_refcounts=off refcount_bits=16
    pk@pk-lightshow:~$ sudo qemu-system-x86_64 \
      --drive file=mydisk.qcow2 \
      --cdrom mini.iso \
      -m 4096 \
      -vnc :0 \
      --accel kvm
    qemu-system-x86_64: --cdrom mini.iso: Could not open 'mini.iso': No such file or directory
    # not working, check why; 

#### Private networking

- No crossover cables are necesssary anymore
- Switches allow to connect 3+ Systems
- Setting static IP addresses allows them to communicate

Network settings locations:

- Debian based distros: `/etc/network/interfaces`
- Redhat based distros: `/etc/sysconfig/network-scripts`
- Some distros now use NetworkManager (`nmcli`, `nmtui`); check with `nmcli d` which network interfaces are managed by it
- Recent Ubuntu releases use Netplan (`/etc/netplan`) using yaml files; on Desktop versions, netplan is often set up to use NetworkManager to manage settings


### Exploration

#### Using diff

Compares files. The output notations are `ed` commands to move around and change content of a file. Can be used to generate patch files.
    
    pk@pk-lightshow:~/tmp$ paste file1 file2 | pr -t -e20
    apple               apple
    banana              banana
    cherry              cherry
    dragonfruit         elderberry
    elderberry          dragonfruit
    fig                 fig
    grapefruit          grapefruit
    honeydew            honeydew
    
    pk@pk-lightshow:~/tmp$ diff file1 file2
    4d3 # line 4 of left file is missing / (d)eleted in the right file
    < dragonfruit
    5a5 # line 5 differs / has been (a)ppended to the right file
    > dragonfruit
    pk@pk-lightshow:~/tmp$ diff -y file1 file2
    apple								apple
    banana								banana
    cherry								cherry
    dragonfruit						      <
    elderberry							elderberry
    >	dragonfruit
    fig								fig
    grapefruit							grapefruit
    honeydew							honeydew

    # | indicates that line has changed
    pk@pk-lightshow:~/tmp$ diff -y file1 file4
    apple								apple
    banana								banana
    cherry								cherry
    dragonfruit						      |	durian
    elderberry							elderberry
    fig								fig
    grapefruit							grapefruit
    honeydew							honeydew

    pk@pk-lightshow:~/tmp$ diff file1 file5
    1,3c1,3
    < apple
    < banana
    < cherry
    ---
    > apricot
    > blueberry
    > coconut

#### Using xargs

xargs takes the output of a command and uses it as arguments for a command *line by line* (so it calls the command multiple times for multiple lines in the output from the first command). By itself, it just echoes it out.

Example: copy files that match a certain criteria from *anywhere* on the system to a specific directory:

    # {}=standin, can be anything
    pk@pk-lightshow:~$ find ~/Pictures -name "*.jpg" | xargs -I "{}" echo We found {}
    We found /home/pk/Pictures/tv/formular.jpg
    We found /home/pk/Pictures/tv/klebeband.jpg
    We found /home/pk/Pictures/stars_sky_night_113553_1920x1080.jpg
    We found /home/pk/Pictures/heckl.jpg
    We found /home/pk/Pictures/sky/sky.jpg
    [...]
    # copy all jpgs to a specific folder and preserve path (--parents)
    # this preserves the FULL path, so it starts form ~/tmp/home/username/Pictures/...
    pk@pk-lightshow:~$ find ~/Pictures -name "*.jpg" | xargs -I "{}" cp --parents {} ~/tmp/

This example could also with the `find -exec` option. 

#### Using watch and time

- `watch`: run a command at a given interval and shows / refreshes the output (default every 2 seconds), like `top` refreshes. Example: `watch lsmem`
- `time`: show how long a command took to complete. Example: `time ls`





## Building an Ubuntu server notes

Random notes from the course of the same name on linkedin learning

Useful stuff:

- Copy a file from local to remote (pk's Desktop folder): `scp somefile pk@192.168.178.25:Desktop`
  - Syntax: `scp [source] [destination]` 
  - openssh-server must be installed and active (check with `sudo systemctl status ssh`)
  - If you're in a ssh session, the local server is the one you're ssh'd in of course
- `nmap -Pn [host]` to scan a host blocking ping

### Explore hardware

- `sudo lshw` - exhaustive hardware information
- `sudo lshw -html > hardware.html` - export to html
- `scp hardware.html pk@192.168.178.25:Desktop`
- `lsblk` for storage devices overview
- `blkid` for detailed block devices overview
- `lsmem` for memory (ram) overview
- `lscpu` CPU stuff (same as `cat /proc/cpuinfo`
- `lspci` / `lsusb`
- `lsb_release -a` for linux release information
- `uname -a` for kernel / release info
- `hostnamectl` to see (and set) the hostname 

### apt

- manage automatic upgrades with `dpkg-reconfigure unattended-upgrades`
- only one instance of apt can run, so no software installation / upgrade while the auto updater is running
- `do-release-upgrade` does what it says, moving from a LTS release to the next LTS release
- change to `Prompt=normal` in `/etc/update-manager/release-upgrades`to upgrade to a non-LTS release (not recommended)
- *use tmux or screen for release upgrades when connected to a remote machine!*

### snaps

- snaps are self contained loop file systems (similar do docker or wine) that provide whatever libraries etc. the snap 
  needs to run.
- snap installed programs are updated automatically
- command: `snap`, see `snap --help` for more
- installed snap programs are in the path

### System logs

See [system logs](#system-logs)

### Process management

See [ps](#ps) and following in the linux tips weekly section

### Ressource management (processor, memory, storage, heap etc.)

- `top` / `htop` see [top](#top)
- `free` shows memory / swap
- `df` shows file system information, `df -h /` shows only info for `/`
- find large files with `sudo find / -size +500M`
- `nice` to set process' priority (rarely needed)

### Service management

- provide funcionatlity to users (apache, db, ssh etc)
- "wrappers" around processes, communication over systemd
- respond to requests
- controlled / viewed by `systemctl` (ubuntu)
- `systemctl status syslog.service` / `systemctl -u syslog.service` for specific service information
- `systemctl [start|stop|restart|enable|disable] [servicename]` (self explanatory)

### Planning for power interruptions

- UPS can communicate with the server to inform it about power outages to give it time for a controlled shutdown; 
  configuration is vendor dependent

### Installing a desktop environment and remote desktop

    pk@pi:~$ sudo apt install ubuntu-desktop
    # install remote desktop server
    pk@pi:~$ sud o apt install xrdp
    # add xrdp user to ssl-cert group to access the certs
    pk@pi:~$ sudo usermod -aG ssl-cert xrdp
    # allow port for desktop remote
    pk@pi:~$ sudo ufw allow 3389
    pk@pi:~$ sudo nano /etc/xrdp/startwm.sh
    # add the following lines before "test -x [...]" at the bottom of the file
    # otherwise you might have a black screen
    unset DBUS_SESSION_BUS_ADDRESS
    unset XDG_RUNTIME_DIR

Install remmina (remote desktop client) on the workstation (NOT the server) to access it.

- `systemctl set-default multi-user.target` to disable autostart of the desktop
- `systemctl set-default graphical.target` to revert


### Adding a disk

- to identify devices to disk models: `sudo lshw -businfo -c disk`
- start fdisk with e.g. `sudo fdisk /dev/sdc`; in-program commands:
  - `p` - show partitions
  - `d` - delete partitions
- After creating a partition, create a file system (e.g. ext4) using `sudo mkfs.ext4 /dev/sdc1`
- Or just use gparted

Mount a disk:

    # create mount point directory
    sudo mkdir /mnt/storage
    # mount
    sudo mount /dev/sdc1 /mnt/storage
    sudo chmod 777 /mnt/storage

### Exploring redundant storage

- redundancy is not a backup
- RAID
  - mirrored or striped volumes and supports parity
  - Level 0 = JBOD (just a bunch of disks), no redundancy
  - Level 1 = mirroring
  - Level 5 = striped over 3 or more disks, stands loss of 1 disk
  - Level 6 = 4 or more disks, can stand loss of 2 disks (recommended)
  - managed through `mdadm`
- LVM
  - logical volume manager
  - creates and manages flexible volumes
  - Terminology: PV = physical volume, VG = volume group (containing PVs), LV = logical volumes within VGs that 
    represent user-facing volumes where file systems are created.
  - LVs can be moved between PVs and VGs (moved between the actual hardware disks)
  - does not have to, but can provide redundancy
  - more complex setup than RAID
- ZFS
  - both file system and volume manager
  - uses Vdevs made up of disks to create pools, where file systems and block devices can be created
  - file systems and block devices can be moved to other pools on different hardware
  - uses copy-on-write (COW), making it easy to create snapshots
- BTRFS
  - b-tree file system
  - manages file integrity and some raid features
  - resilient against data corruption
  - can be used on a single disk

### Creating encrypted storage

Create with `cryptsetup` and `LUKS` (Linux unified key setup)

Create and mount:

    pk@pi:~$ sudo luksformat -t ext4 /dev/sda1
    # open locks volume -> maps the encryped volume sda1 to the 
    # securefiles entry in the /dev/mapper directory
    pk@pi:~$ sudo cryptsetup open /dev/sda1 securefiles
    pk@pi:~$ ls /dev/mapper/
    control  securefiles
    pk@pi:~$ sudo mkdir /mnt/securestorage
    # the actual mounting
    pk@pi:~$ sudo mount /dev/mapper/securefiles /mnt/securestorage
    # can't this be done before mounting?
    pk@pi:~$ sudo chmod 777 /mnt/securestorage/

Mount:

    pk@pi:~$ sudo cryptsetup open /dev/sda1 securefiles
    pk@pi:~$ sudo mount /dev/mapper/securefiles /mnt/securestorage


Unmount:

    `pk@pi:~$ sudo umount /mnt/securestorage`
    pk@pi:~$ sudo cryptsetup close securefiles

### Automatically mount disks

Settings for mounting disks are in the file system table at `/etc/fstab`.

Example for (optionally) mounting an usb drive at start:
- check label / uuid of storage to mount with `blkid`
- add to fstab: `UUID="c1838bed-42e3-4337-91b5-3ee253b3419e" /mnt/storage ext4 defaults,nofail 0 2`
  - UUID is the label we just found with `blkid` 
  - `defaults` are common options, `nofail` so the system doesn't wait for storage that might not be attached such 
    as USB drives
  - `0 2` first 0 is not used anymore, 2 (check filesystem after those with "1"; 0 = don't check)
  - don't forget to create the mount directory (here: `/mnt/storage`) and set the access rights as desired


### Monitoring storage

- `iotop` to see disk reads/writes/swap/io by process 
- `iostat` (`sysstat` package)
- `df -h` to see size / used storage per device (filesystem)
- `hdparm` to get information on HDs, set parameters (standby, power management) and check speed  

### Network configuration with Netplan

In linux mint, systemd-networkd seems not to be running by default so the below applies to ubuntu server for now.

- uses YAML files to describe network interfaces 
- configurations are "rendered" by `systemd-networkd` or `NetworkManager`
- `networkctl` (and `networkctl status [interface IDx or link name]`) for network information.
- network configurations under in `/run/systemd/network`
- network yaml under `/etc/netplan/50-cloud-init.yaml` (for the preinstalled cloud optimized ubuntu server image), 
  otherwise `00-installer-config.yaml` created by the installer
- to add new network devices, check their "LINK" name with `networkctl` and add them under `/etc/netplan`, e.g. 
  `/etc/netplan/01-usbadapter.yaml`. They can be put into the installer or cloud-init configs too, but it it's 
  cleaner to put them into their own configuration as they were not present at install or cloud init time.

Example yaml for adding wifi to the ubuntu cloud image installation:

    pk@pi:/etc/netplan$ cat 01-wifi.yaml 
    network:
        version: 2
        renderer: networkd
        wifis:
            `wlan0:
                optional: true
                access-points:
                    "pwic":
                        password: "some password"
                dhcp4: true`

- When changes are done, run `sudo netplan apply`
- To set a static IP, gateway and nameservers instead of DHCP, use (example):


    network:
        version: 2
        renderer: networkd
        wifis:
            wlan0:
                [...]
                addresses:
                    - 10.0.1.123/24
                gateway4: 10.0.1.1
                nameservers:
                  addresses: [10.0.1.1, 4.4.4.4]


### Firewall andministration with `uwf` (uncomplicated firewall)

- see [UFW section above](#ufw-uncomplicated-firewall)

### Monitoring network activity

- `iftop` (install if not installed): top-like viewer for network traffic.
  - uses the first network device found, use `iftop -i [device]` to specify device, e.g. `sudo iftop -i wlan0`
  - `h` to toggle help
- `jnettop` - alternative to iftop

### Configuring a ssh server

- short for Secure SHell
- package name is `openssh-server`
- service name is `sshd`
- default port is 22
- `openssh-server` is configured in `/etc/ssh/ssh_config`: there, key based authentication (instead of password 
  authentication) can be set up besides other options, noteworthy ones are
  - `Port`
  - `PermitRootLogin` # yes|no|prohibit-password (default)
  - `PubKeyAuthentication`
  - `PasswordAuthentication` to make it keyfile-only
- with ssh access, files can be transfered with `cp` without additional setup, e.g. `scp pk@pk-lightshow:Desktop/myfile 
  ~/` to copy myfile from the remote Desktop to the local desktop. Local means the machine where the current shell 
  is running, so if you're ssh'd in a machine, that machine is the local one.
- ssh also provides SFTP (SSH File Transfer Protocol) out of the box to use with e.g. filezilla or on command line
  - emulates ftp service over ssh
  - use filezilla or, on the command line, use `sftp user@server` and type `?` to see possible commands. `bye` to quit.
  - common commands: pwd (display remote working directory), `ls`, `put` (upload a file), `get` (download a file)
- SSH tunnels can be used to make traffic from the client appear to come from the server. Useful for accessing 
  services like databases on the host that are only accessible from the host with a client program.

#### Using a key pair instead of password authentication

- one or many keys
  - one key for each computer: more setup, more resilient
  - one key for all computers: less setup, single point of failure

Generating and distributing a key:

    pk@pk-lightshow:~$ ssh-keygen -t rsa
    Generating public/private rsa key pair.
    # can't use ~/.ssh/pi_key here, full path has to be entered
    Enter file in which to save the key (/home/pk/.ssh/id_rsa): /home/pk/.ssh/pi_key
    Enter passphrase (empty for no passphrase):
    Enter same passphrase again:
    Your identification has been saved in /home/pk/.ssh/pi_key
    Your public key has been saved in /home/pk/.ssh/pi_key.pub
    [...]
    # copy key to the remote server
    pk@pk-lightshow:~/.ssh$ ssh-copy-id pk@pi
    # OR
    scp .ssh/pi_key.pub pk@pi:
    [ssh to remote]
    mkdir .ssh
    cat pi_key >> .ssh/authorized_keys

Log into the server using the key:
    
    # you might have to enter the key passphrase
    # or add it to the keychain
    ssh -i ~/.ssh/pi_key pk@pi

Create config file to make connecting easier:

    pk@pk-lightshow:~$ vi .ssh/config
    pk@pk-lightshow:~$ cat .ssh/config 
    Host pi
        User pk
        HostName pi
        IdentityFile ~/.ssh/pi_key
    # Now only ssh pi (the shortcut after "Host") is needed to login
    ssh pi
        
To create a keypair in windows, use `puttygen` from the putty page and copy the public key to the server.

#### Creating a ssh tunnel

![tunnel](readme_images/tunnel.png)

Example to access an application on port 3306 on the *server* (pi) using port 9000 on the *local* machine 
(pk-lightshow): `pk@pk-lightshow:~/$ ssh -L 9000:localhost:3306 pk@pi`. Now the service on port 3306 on `pi` can be 
accessed using localhost:9000 on the local machine.

Most DB browser apps have the options to set up a ssh tunnel included, just the openssh-server must be installed as 
usual on the remote. 

### Sharing files with Samba

- SMB (Server Message Block), aka CIFS (common internet file system)
- cross platform file sharing providing clients access to local files
- Install with `sudo apt install samba`
- configured in `/etc/samba/smb.conf`

Create a new fileshare by adding an entry to the bottom of smb.conf:

    pk@pi:~$ sudo vi /etc/samba/smb.conf
    pk@pi:~$ tail -n 7 /etc/samba/smb.conf 
    [storage]
       comment = Shared Storage
       path = /mnt/storage
       read only = no
       valid users = storageuser, pk
    # verify
    pk@pi:~$ testparm
    # create samba user
    pk@pi:~$ sudo useradd storageuser
    pk@pi:~$ sudo smbpasswd -a storageuser
    # open port 139/tcp to allow samba traffic for linux clients
    pk@pi:~$ sudo ufw allow 139/tcp
    # ... and for windows clients
    pk@pi:~$ sudo ufw allow 445/tcp
    # restart 
    pk@pi:~$ sudo systemctl restart smbd

The share can now be connected to by looking in network for the hostname or entering the host ip + share name, such 
as \\192.168.178.29\storage.

![connecting to smb](readme_images/smb.png)

Everybody using these credentials will be able to create, modify and delete files as they're all owned by `storageuser`.

Be sure to set the read / write permissions on the shared folder on the host (read/write for other users).

### Web hosting with Apache

    pk@pi:/mnt/storage$ sudo apt install apache2
    pk@pi:/mnt/storage$ sudo ufw allow 80/tcp
    pk@pi:/mnt/storage$ cd /var/www/html
    pk@pi:/var/www/html$ vi index.html
    pk@pi:/var/www/html$ sudo chown -R www-data:www-data /var/www/html

- Configure apache in `/etc/apache2/apache2.conf`
- Add sites in `/etc/apache2/sites_available`
  - default site on port 80 is defined in `000-default.conf`
  - enable / disable individual sites use `a2ensite` and `a2dissite` commands (see man pages)
- install modules such as php (`libapache2-mod-php`) using `apt`
- see status with `systemctl status apache2` 
- restart etc. with `sudo systemctl [start|stop|restart|enable|disable] apache2`

### Web hosting with NGINX

First, disable apache2 with `sudo systemctl stop apache2; sudo systemclt disable apache2` if is still enabled.

- Package: `nginx`
- Configuration: `/etc/nginx/nginx.conf`
- site configuration in `/etc/nginx/sites-available/`
- to enable a site, soft-link it to `/etc/nginx/sites-enabled`
- restart similar to apache with `sudo systemctl restart nginx`

### Hosting a database with MariaDB

Noteworthy news (to me):

- `mysql_secure_installation` secures a fresh mariadb/mysql install interactively
- Server is now root administered by `sudo mysql` instead (or in addition to?) `mysql -u root -p`



    pk@pi:~$ sudo apt-get install mariadb-server
    # harden / secure installation: 
    pk@pi:~$ sudo mysql_secure_installation
    # this is how it's done now, no more "mysql -u root -p"
    pk@pi:~$ sudo mariadb
    # create a non-root user with access to all databases (don't do this in a live environment)
    MariaDB [(none)]> create user 'pk'@'localhost' identified by 'somepassword'
    MariaDB [mysql]> grant all privileges on *.* to 'pk'@'localhost';
    
    # Optionally tunnel the server mariadb port (3306) to the local system's port 9099
    # this is on the LOCAL machine now!
    pk@pk-lightshow:~$ ssh -L 9099:localhost:3306 pk@pi

Alternatively (and probably even better as it can use random free ports), create the ssh tunnel in the database 
client as the one in intellij:

![ssh tunnel configuration in intellij](readme_images/mariadbsshtunnel1.png)
![ssh tunnel configuration in intellij2](readme_images/mariadbsshtunnel2.png)

### Monitoring a server with cockpit

AMAZING tool that allows server to be monitored and administered remotely in a webbrowser.

Doesn't eat any ressources while not in use (systemd socket activation).

Also has a lot of plugins that can be installed directly in the cockpit interface.

Installation:

    pk@pi:~$ sudo apt install cockpit
    # if used only on the localhost, this is not necessary
    pk@pi:~$ sudo ufw allow 9090

![Cockpit GUI](readme_images/cockpit.png)

### Virtualizaton with KVM/QEMU

Doesn't really work well on Raspi

### Containers with LXC / LXD

Like docker; uses host kernel.

Example of creating 2 alpine images:

    pk@pi:~/Downloads$ sudo lxd init
    pk@pi:~/Downloads$ sudo usermod -aG lxd pk
    pk@pi:~$ lxc launch images:alpine/3.11
    # and another
    pk@pi:~$ lxc launch images:alpine/3.11
    pk@pi:~$ lxc list
    +------------------+---------+----------------------+-----------------------------------------------+-----------+-----------+
    |       NAME       |  STATE  |         IPV4         |                     IPV6                      |   TYPE    | SNAPSHOTS |
    +------------------+---------+----------------------+-----------------------------------------------+-----------+-----------+
    | assuring-monarch | RUNNING | 10.64.158.220 (eth0) | fd42:4a67:3eb1:b39c:216:3eff:fe2f:1cd7 (eth0) | CONTAINER | 0         |
    +------------------+---------+----------------------+-----------------------------------------------+-----------+-----------+
    | driven-albacore  | RUNNING | 10.64.158.166 (eth0) | fd42:4a67:3eb1:b39c:216:3eff:fe71:9067 (eth0) | CONTAINER | 0         |
    +------------------+---------+----------------------+-----------------------------------------------+-----------+-----------+
    # exectute uptime command in container
    pk@pi:~$ lxc exec assuring-monarch uptime
    14:52:09 up 7 min,  load average: 0.16, 0.21, 0.11
    # open a shell in the container
    pk@pi:~$ lxc exec assuring-monarch /bin/ash
    ~ # ls
    ~ # exit
    pk@pi:~$
    pk@pi:~$ lxc stop assuring-monarch
    pk@pi:~$ lxc stop driven-albacore
    pk@pi:~$ lxc delete assuring-monarch
    pk@pi:~$ lxc delete driven-albacore


- `lxc file push [file] [container/path]` to copy files from host *into* the container
- `lxc file pull [container/path] [filename]` to copy files *from* the container into host

### Docker, Jellyfin, Nextcloud

Skipped, easy enough setup and did docker ad nauseum

### Your server and the internet

- exposed services should be seured and their software kept updated
- some services such as apache / nginx have small attack surfaces (just serve sites)
- interactive services provide more attack oportunities
- configure SSH to use keys and not accept passwords
- Software like fail2ban can help reduce unwanted traffic (watches failed login attempts and bans addresses these 
  come from)
- ensure strong passwords for services requiring login (nextcloud, jellyfin, cockpit etc)
- enable https for these so passwords aren't sent as clear text and ensure server identity
- consider requiring a vpn to access services on the network from outside
- never expose samba to the internet

## Bash scripting

Notes on course of same name by Scott Simpson

### Using bash

- see user's default shell with `echo $SHELL`

#### Pipes and redirections

- pipes take the result of one process and sends it to the other, e.g. `cat textfile.txt | grep "hello"`
- redirections like `>` or `>>` send output to a file (overwrite or append respectively) or use the content of a 
  file as the command input: `[command] < args.txt`
- See [bash output redirection](#bash-output-redirection)

#### Bash builtins

- built in commands like `cd`, `echo` etc. can be viewed with `enable`
- built-ins take precedence over other executables in the path unless specified otherwise
- `command -V [command]` can be used to check whether a built-in or another command is used for a certain command:
- built ins can be disabled (or rather the command version from the gnu utils enabled) by using `command -n [command]
  ` and re-enabled by `command [command]`

      pk@pk-lightshow:~$ command -V echo
      echo is a shell builtin
      pk@pk-lightshow:~$ command -V df
      df is /usr/bin/df
      pk@pk-lightshow:~$ enable -n echo
      pk@pk-lightshow:~$ command -V echo
      echo is /usr/bin/echo
      pk@pk-lightshow:~$ enable echo

#### Brackets and braces in bash

Course terminology:

- `()` parentheses
- `{}` braces
- `[]` brackets

Used differently than in most other languages.

#### Bash expansions and substitutions

- `~`: tilde expansion; represents users `$HOME` environment variable
- `{...}`: brace expansion; creates sets or ranges; see examples in [exploring bash](#exploring-bash)
- `${...}`: parameter expansion; variable access is a special case of parameter expansion


      pk@pk-lightshow:~$ greeting="hello there!"
      pk@pk-lightshow:~$ echo $greeting
      hello there!
      pk@pk-lightshow:~$ echo ${greeting}
      hello there!
      # substrings
      pk@pk-lightshow:~$ echo ${greeting:6}
      there!
      pk@pk-lightshow:~$ echo ${greeting:6:3}
      the
      # search and replace
      # only first search occurrence
      pk@pk-lightshow:~$ echo ${greeting/there/everybody}
      hello everybody!
      ## all occurrences
      pk@pk-lightshow:~$ echo ${greeting//e/_}
      h_llo th_r_!

- `$(...)` or ``command``: command substitution

      pk@pk-lightshow:~$ echo "The kernel is $(uname -r)."
      The kernel is 5.4.0-84-generic.
      # more advance use using python as the command and
      # transforming its output using the shell "tr" commands
      pk@pk-lightshow:~$ echo "Result: $(python3 -c 'print("hello from python")' | tr [a-z] [A-Z])"
      Result: HELLO FROM PYTHON

- `$((...))` or `$[...]` (deprecated): arithmetic expansion
- only integers allowed and a small arithmetic set of operations

      pk@pk-lightshow:~$ echo $((3**3))
      27

- `((...))` arithmetic evaluation
 
#### Understanding bash script syntax

First two characters should be `#!` (shebang) followed by path to bash or env, so either
- `#!/bin/bash` (most common) or
- `#!/bin/env bash` (env would look into path for "bash")

so an executable (`chmod u+x`) script called with `./script.sh` would be executed by the kernel like `/bin/bash .
/myscript.sh`.

This goes for all interpreters like `#!/bin/python` or `#!/bin/awk`

- Non-executable scripts can be run with `bash script.sh` or `source script.sh`. The `source`command is a shell
  built-in that executes commands from a file in the current shell (so an `exit` statement in the script will exit 
  the current shell; if you want to avoid that, make it executable, which will spawn a subshell instead of running 
  it with `source`). 
- A script can be exited with `exit [?status]` or `return`
- Executables that are not in the path must be executed specifying the path, so if you're in the current directory
  use `./script.sh`
- file suffix is as always just informational for the user
- `#` for comments

#### echo

- no quotes: only for simple strings and variables without brackets, parenthesis etc. Spaces are ok. brackets etc. 
  can be escaped with `\`
- single quotes: everything inside '' is regarded as a text, no substitutions
- double quotes: substitutions are done, can be escaped with `\`
- echo adds a break at the end of the output, can be overridden with `-n` option

#### Working with variables

- case sensitive
- alphanumeric variable names
- **no spaces around `=` when assigning variables**
- surround the value with `"` if it contains any special characters like space
- are declared on assignment (`timeleft=100` also creates the `timeleft` variable) or can be declared explicitely with
  `declare`
- constants can be declared with `declare -r`, e.g. `declare -r myname="pkro"`
- `declare` has other options such as `-l`, `-u` to turn the value into all lowercase / uppercase respectively
- `declare -p` or `export` shows all variables defined in the current session
- remove variable with `unset`
- assign with `[varname]=` and reference its value with `$[varname]`
- undeclared variables evaluate to null
- for a bash script to use a variable defined on the shell, it must be exported before running the script: `export
  [varname]=[value]` or just `export [varname]` for an already defined variable, e.g. export `TESTVAR=6 && /bin/bash
  /home/pk/exporttest.sh`
- This can also be done for functions defined in the shell: `export -f myfunc`
- String variables don't need special concatenation. Just put them one after the other: `$text1$text2`

#### math with bash

- arithmetic expansion `$((...))` returns the result of the operation; allowed operations: `+,-,*,/,%,**`
- arithmetic evaluation `((...))` changes the value of variables using `++`, `*=` etc.
- in these, the variable name is used without `$` as this would evaluate to the value, and you can't change an integer 
  literal 
- to declare variables as integers explicitely, declare them with `declare -i x=3`

      # no space around "=" !
      pk@pk-lightshow:~$ a = $((8/4))
      a: command not found
      pk@pk-lightshow:~$ a=$((8/4))
      pk@pk-lightshow:~$ echo $a
      2
      pk@pk-lightshow:~$ ((a++))
      pk@pk-lightshow:~$ echo $a
      3
      pk@pk-lightshow:~$ ((a**=2))
      bash: ((: a**=2: syntax error: operand expected (error token is "=2")
      pk@pk-lightshow:~$ ((a*=2))
      pk@pk-lightshow:~$ echo $a
      6
      pk@pk-lightshow:~$ echo $((a+3))
      9
      # parenthesis can be used (with or without spaces around)
      pk@pk-lightshow:~$ echo $(((2+3)*5))
      25

- only integer; rest gets cut off (`1/3` evaluates to 0); for floating point math, use `bc` (basic calculator) or `awk`

      pk@pk-lightshow:~$ declare -i c=1
      pk@pk-lightshow:~$ declare -i d=3
      # scale defines num of decimals
      pk@pk-lightshow:~$ e=$(echo "scale=3; $c/$d" | bc)
      pk@pk-lightshow:~$ echo $e
      .333

- $RANDOM returns a pseudorandom number between 0 and 32767

      pk@pk-lightshow:~$ echo $RANDOM
      21907
      # get a number between 1-10
      pk@pk-lightshow:~$ echo $(( ($RANDOM % 10) + 1 ))
      3


#### Comparing values with test

- `test` is a shell built-in used to evaluate expressions
- examples (many others in `help test`):
  - `test -a [file]`: 0 (true) if file exists
  - `test [string1] = [string2]`: true if strings are equal (**spaces!!**)
  - `test [number1] -eq [number2]`: true if numbers are equal
- arithmetic operators: `-eq, -ne, -lt, -le, -gt, or -ge`; if these are used with strings and return a boolean just 
  as they would in php, depending on their position in the ascii character set
- `[` is an alias for `test`, e.g. `[ -d 1=1 ]` (again, the spaces after / before are equally important as they are 
  after a command like `test`
- returns a return status, **0=success (true), 1=failure (false)**
- exit state can be accessed in the `$?` variable or directly in a flow control structure
- negate with `!` in front of test expression

      pk@pk-lightshow:~$ test 1 -eq 1
      pk@pk-lightshow:~$ echo $?
      0
      pk@pk-lightshow:~$ [ "cat" = "dog" ]
      pk@pk-lightshow:~$ echo $?
      1
      pk@pk-lightshow:~$ [ ! 3 = 5 ]; echo $?
      0

#### Comparing values with extended test

- allows multiple / more complicated expressions
- Syntax: double brackets `[[ ... ]]`
- more features, less compatible with other shells
- join conditions with `&&`, `||`

      # is ~ a directory and does the file /bin bash exist?
      pk@pk-lightshow:~$ [[ -d ~ && -a /bin/bash ]]; echo $?
      0

- Commands can be logically joined with their exit codes, too. See [Multiple commands in one line](#multiple-commands-in-one-line)

      pk@pk-lightshow:~$ [[ -d ~ ]] && echo ~ is a directory
      /home/pk is a directory

- `true` and `false` are built-ins that set a return code (0 / 1)
- `=~` allows regular expression matching
  
      pk@pk-lightshow:~$ [[ "cat" =~ c.* ]]; echo $?
      0

#### Formatting and styling text output

`echo -e` interprets escaped characters like `\t`, `\n` etc.

    pk@pk-lightshow:~$ echo -e "a\tb\tc\n123\t456\t789"
    a       b       c
    123     456     789
    # color text; look it up. "m" ends the control sequence started with "\".
    pk@pk-lightshow:~$ echo -e "\033[33;44m abc123"
    [colored output]

![colors and styles](readme_images/terminalstyles.png)

    #!/bin/bash
    underlinedRed="\033[4;31;40m"
    red="\033[31;40m"
    none="\033[0m"
    echo -e $underlinedRed"Error"$none$red" Something went wrong"$none

Result:

![styledresult](readme_images/styledtext.png)

#### Formatting output with printf

The usual printf (shell built in). No comma needed for values. If multiple sets are provided like in the example 
below, printf will repeat the pattern for each value set.

    #!/bin/bash
    printf "%(%Y-%m-%d %H:%M:%S)T\n" $(date +%s)
    # printf defaults to current time (dateformat only) when no argument given
    printf "%(%Y-%m-%d %H:%M:%S)T\n"
    # pass -1 if you have multiple args and want to use printf built-in time
    printf "%(%Y-%m-%d %H:%M:%S)T %s\n" -1 "is the date"
    printf "%10s: %5d\n" "A label" 123  "B label" 456
    printf "%-10s: %5d\n" "A label" 123  "B label" 456
    printf "%-10s: %-5d\n" "A label" 123  "B label" 456
    printf "%-10s: %05d\n" "A label" 123  "B label" 456
    
    # output
    2021-09-10 09:00:12
    2021-09-10 09:00:12
    A label:   123
    B label:   456
    A label   :   123
    B label   :   456
    A label   : 123  
    B label   : 456  
    A label   : 00123
    B label   : 00456

#### Working with arrays

- bash supports indexed and associative arrays
- only one layer (no nested arrays)
- declare directly `snacks=("apples" "oranges" "bananas")`
- or explicitly `declare -a snacks=("apples" "oranges" "bananas")`
- access elements with 0-based index `echo ${snacks[1]}`
- add elements `snacks[5]="grapes"` (array can be sparse)
- append elements on the next free index with `snacks+=("mango")` 
- show all elements in the array with `echo ${snacks[@]}`
- bash version 4+ supports associative arrays, declared with `-A`
- get length of an array by prefixing the "show all" version it with `#`: `len=${#snacks[@]}`

      pk@pk-lightshow:~$ snacks=("apple" "banana" "orange")
      # this does NOT work
      pk@pk-lightshow:~$ echo $snacks[1]
      apple[1]
      pk@pk-lightshow:~$ echo ${snacks[1]}
      banana
      pk@pk-lightshow:~$ declare -a snacks=("apples" "oranges" "bananas")
      pk@pk-lightshow:~$ echo ${snacks[1]}
      oranges
      pk@pk-lightshow:~$ snacks[0]=butterflies
      pk@pk-lightshow:~$ echo ${snacks}
      butterflies
      pk@pk-lightshow:~$ snacks[5]=grapes
      pk@pk-lightshow:~$ snacks+=("mango")
      pk@pk-lightshow:~$ echo ${snacks[@]}
      butterflies oranges bananas grapes mango
      pk@pk-lightshow:~$ echo ${#snacks[@]}
      5
      pk@pk-lightshow:~$ for i in {0..6}; do echo "index $i: ${snacks[i]}"; done
      index 0: butterflies
      index 1: oranges
      index 2: bananas
      index 3:
      index 4:
      index 5: grapes
      index 6: mango
    
      pk@pk-lightshow:~$ declare -A office
      pk@pk-lightshow:~$ office[city]="Hamburg"
      pk@pk-lightshow:~$ office["building name"]="Klaus"
      pk@pk-lightshow:~$ echo ${office["building name"]} is in ${office[city]}
      Klaus is in Hamburg

#### Conditionals

    if [command|condition|enhanced condition]
    then ...
    [elif ... then]
    [else]
    fi

    declare -i a=3
    # using enhanced test 
    if[[ $a -gt 4 ]]; then
      echo "$a is greater than 4"
    elif [[ $a -eq 4 ]]; then
      echo "$a is equal to 4"
    else
      echo "$a is smaller than 4"
    fi

    # using arithmetic evaluation
    if (( $a > 4 )); then
    [... same]

#### Loops

- `while` the usual
- `until` runs until a condition is true


    declare -i n=0
    
    while (( n < 10 ))
    do
      echo "n:$n"
      ((n++))
    done
    
    declare -i m=0
    until (( m == 10 ))
    do
      echo "m:$m"
      ((m++))
    done

#### For loops

    # "in" version, with list of items
    for i in 1 2 3
    do
      echo $i
    done
    
    # one line, brace expansion
    for i in {1..100}; do echo $i; done
    
    # arithmetic evaluation (c-style)
    for (( i=1; i<=100; i++ ))
    do
      echo $i
    done
    
    # using parameter expansion
    declare -a fruits=("apple" "banana" "cherry")
    # fruits[@] expands to "apple banana cherry", so it's basically
    # the same as the first "in" version
    for fruit in ${fruits[@]}; do echo $fruit; done
    
    # command substitution
    for i in $(ls); do echo "Found a file: ${i}"; done

#### case statement

    animal="dog"
    case $animal in
      cat) echo "Feline";; # note 2 semicolons at the end
      #multiple statements, end indicated by ;; 
      dog|puppy) echo "Canine"; echo "a nice doggy";;  
      *) echo "No match";; # default
    esac

#### Functions

Need to be declared before they're used. Can be defined with and without function keyword and braces.
No explicit arguments, and arguments are not put in braces when calling the functions. Inside the function, the 
arguments are refered to withz `$1`, `$2` etc.

Other special variables:
- `$@` = list of arguments given to a function
- `$FUNCNAME` = name of the function



    greet() {
      echo "hello $1; my name is $FUNCNAME and I received the following arguments:"
      declare -i i=1
      for f in $@; do
        echo "$i $f"
        (( i++ ))
      done
    }
    pk@pk-lightshow:~/projects/linux/linux_notes/shell_scripts$ greet pkro yay -1 
    hello pkro; my name is greet and I received the following arguments:
    1 pkro
    2 yay
    3 -1
    pk@pk-lightshow:~/projects/linux/linux_notes/shell_scripts$ greet $(ls)
    hello arrays.sh; my name is greet and I received the following arguments:
    1 arrays.sh
    2 exporttest.sh
    3 printf.sh
    4 styledtext.sh
    5 system_report_challenge.sh

Unless otherwise specified, all variables in bash are global; local variables can be defined with `local` that 
accepts the same parameters as `declare`, e.g. `local -i i=1`

#### Reading and writing text files

The usual input / output redirections with `>`, `>>` and `<` apply. Lines can be read with `read`

    textfile="textfile.txt"
    for i in {1..5}
    do
      echo "this is line $i" >> ${textfile}
    done
    
    while read line; do echo $line; done < ${textfile}
    rm ${textfile} 2>/dev/null && echo "removed file" || echo "couldn't delete file"

### User interaction

#### Working with arguments

- Like function arguments, script arguments can be accessed with `$1`, `$2` etc.
- `$0` contains the script name
- `$@` contains an array of arguments
- `$#` contains the number of arguments
- the options are included (`-u`, `username` etc) are included in the arguments array

#### Working with options

- also allows to pass information into a script
- either `-[letter]`
- accessed using `getopts`
- must be passed *before* other arguments


Script:

    echo "you gave $# arguments to the script $0: $@"
    echo "the first one was $1"
    echo "Options accepted by this script are u and p"
    
    # specify known options with "[letter]:"
    # unknown options with ":"
    # just "[letter]" to check IF it was passed
    while getopts :u:p:ab option; do
      case $option in
      u) user=$OPTARG;;
      p) pass=$OPTARG;;
      a) echo "\"a\" flag was passed";;
      b) echo "\"b\" flag was passed";;
      ?) echo "I don't know $OPTARG";;
      esac
    done
    
    echo "user: $user, pass: $pass"

    # terminal
    pk@pk-lightshow:~/$ ./argsopts.sh -u joe -p secret -b -x blah hello
    you gave 8 arguments to the script ./argsopts.sh: -u joe -p secret -b -x blah hello
    the first one was -u
    Options accepted by this script are u and p
    "b" flag was passed
    I don't know x
    user: joe, pass: secret

#### Interactive input

`read` pauses execution of the script and reads from stdin

    # show prompt before input
    read -p "Please enter your name: " name
    # silent input
    echo "Please enter your pass"
    read -s pass
    # add a default
    read -ep "Favorite color? Default is " -i "blue" favcolor
    
    echo "Hi $name! please select an animal:"
    
    # interactive select
    select animal in "cat" "dog" "bird" "fish" "quit"
    do
      if [ $animal = "quit" ]; then
            break
      fi
      echo "You selected $animal"
    done
    
    # expect a certain format:
    read -p "What year? [nnnn] " year
    
    until [[ $year =~ [0-9]{4} ]]; do
      read -p "What year? [nnnn] " year
    done
    echo "Selected year: $year"

### Troubleshooting / script portability

- read errors / line numbers carefully
- tell bash to show every command that it runs with `set -x`
- check bash version with $BASH_VERSION and $BASH_VERSINFO: `[[ $BASH_VERSINFO -ge 4 ]]`
- check if tools needed exist: `[[ ! -a $(which nmao) ]] && echo "nmap not found on system" && exit`
- write scripts for bourne shell (sh)


## Not course related

### Multiple commands in one line

- `command1; command2` runs command1, then command2
- `command1 && command2` runs command1, then command2 *if command1 ran succesfully*
- `command1 || command2` runs command1, then command2 *if command1 failed*
- `command1 && commandIfSuccess || commandIfFailed` works just like a ternary operator

### adding commands to bash using .bashrc

To not clutter the .bashrc and for easier backup, create new commands in a separate file (e.g. .bash_own_functions.sh) and include them somewhere in the .bashrc (source ~/.bash_own_functions.sh).

### cheat.sh

Very useful to quickly look up the most common use cases of a command.  

Usage:  

    curl cheat.sh/commandname

Example:  

    curl cheat.sh/tar

Or add it in the .bashrc / own functions file:

    cheat () {
        curl cheat.sh/"$1"
    }

### show only uncommented lines in a configuration file:

`sed -e "/^#/d" /etc/squid/squid.conf | awk NF`

### Kill window creator process

`sudo xkill`, then click on the unresponsive window

### commands

#### tac

Shows lines in a file in reverse order (reversed `cat`)

#### xargs and backticks to pipe output of command1 into command2

Output directory of first mach of locate

    locate --limit 1 DOOM2.WAD | grep -o "^.*\/" | xargs ls

Ask show confirmation prompt before executing the command xargs pipes into (-p option):

    locate --limit 1 DOOM2.WAD | grep -o "^.*\/" | xargs -p ls

This does not work as cd is an in-built shell command, but xargs opens a new process, so state changes don't propagate to parent process (shell); effectively, this means that xargs can only execute stand alone commands.

    locate --limit 1 DOOM2.WAD | grep -o "^.*\/" | xargs cd

This works (NOT using xargs):
  
    cd `locate --limit 1 DOOM2.WAD | grep -o "^.*\/"`

Or, using xargs again and dirname command:

    cd `locate --limit 1 DOOM2.WAD | xargs dirname`



#### Give a specified group make a directory access to a folder

Can be useful to give own user and apache write access to a folder that is linked in htdocs.

Here, we want to give the user "pk" and "daemon" write (and read / execute) access to the folder php_notes.
    
    # create new group (if necessary)
    sudo groupadd pkandapache
    # add users to group
    sudo usermod -a -G pkandapache pk
    sudo usermod -a -G pkandapache daemon
    # change group owner of folder to pkandapache
    sudo chgrp -R pkandapache php_notes
    # set permissions as necessary, first digit = owner, second = group, third = everyone else
    # digit = rwx in binary, so read + execute = 1 0 1 = 5
    chmod -R 775 php_notes/


#### Remove alt-click behaviour so you can use IntelliJ alt-shift-click to set new carets without changing the keymap

In Mint(or Cinnamon) the key can be changed or disabled under

system settings > windows > behavior > 'Special key to move and resize window'

#### Open port
        
        E.g. to fix IntelliJ / PHPStorm not accepting incoming XDebug connections on port 9003 from Docker

        sudo iptables -A INPUT -p tcp -d 0/0 -s 0/0 --dport 9003 -j ACCEPT
        
        OR 
        
        sudo ufw allow <port_nr>
        
        
#### nc

Among other things (try curl cheat.sh/nc for common usages) useful for logging traffic on a specific port:

    nc -l 9003 > xdebug3connections.log
    
#### tee
  
Read from standard input and write to standard output and files (or commands). Useful for redirecting output to multiple files.
  
#### Use command output as command parameters

use command1 $(command2) to use command2's output as parameters for command2:

`docker rm $(docker ps -a -f status=exited -q)`
