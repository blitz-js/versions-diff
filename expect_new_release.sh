#!/usr/bin/expect -f
    set timeout -1
    set version [lindex $argv 0]
    set appname [lindex $argv 1]
    spawn npx blitz@$version new $appname --no-git
    expect "No - Continue with old version"
    send -- "\[B"
    expect "Your global blitz version is outdated. Upgrade?"
    send -- "\r"
    expect "Formik"
    send -- "\r"
    expect eof
