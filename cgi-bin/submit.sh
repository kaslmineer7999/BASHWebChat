#!/usr/bin/bash

in="`cat|sed -e 's/msg\=//' -e 's/name\=//'`"
in="`busybox httpd -d "$in"`"
name="`cut -d\& -f2 <<< "$in"`"
msg="`cut -d\& -f1 <<< "$in"`"
echo -en "Content-type: text/html\nrefresh: 0.1;URL=/\n\n"
echo -e "${name}:\n${msg}\n" >> ../msg.txt
