#!/bin/sh
for a in _tarball/c-ares-*; do
    if test -n "$arg"; then
        arg=$(echo "&& $arg")
    fi
    arg=$(echo "gpg -b -a $a $arg")
done
echo "Run this to sign them:"
echo "$arg"
