#!/usr/bin/bash

echo -en "Content-type: text/html\nrefresh: 1\n\n"
echo "<!doctype html>"
echo "<style>*{font-family:serif;background-color:#1a1a1a;color:#FFFFFF}</style>"
echo "<pre>"
cat ../msg.txt|sed -e 's/\<style\>//g' -e 's/\<\/style\>//g' -e 's/\<script\>//g' -e 's/\<\/script\>//g'
echo "</pre>"
