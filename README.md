# BASHWebChat

## How "BASHWebChat" works

BASHWebChat works by taking input from a `HTML` form, then filters it and puts it in the file `msg.txt` and it displays the messages using the msgs.sh script

## How to install it
to install it you need:
    - GNU sed
    - any kind of cat command (e.g GNU cat)
    - GNU BASH
    - busybox (compiled with httpd that has a -d option)
    - some form of webserver that supports CGI scripts (here i will be using busybox httpd)
    - Git (To download the project)

1. install the requirements
    - on arch run:
        ```
	    sudo pacman -Sy busybox bash sed git
	    ```
    - on debian run:
        ```
	    sudo apt update
	    sudo apt install busybox bash sed git
	    ```
2. clone the project and make everything in cgi-bin executable
    - run:
       ```
       git clone 'https://www.github.com/kaslmineer7999/BASHWebChat.git'
       chmod 755 BASHWebChat/cgi-bin/*
       ```
3. start the webserver

you can start any webserver you want but here i will use busybox httpd

   - run:
       ```
       busybox httpd -h BASHWebChat/ -p5555 -f -v
       ```

4. DONE!!!!!!
