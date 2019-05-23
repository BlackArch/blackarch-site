rsync --chmod "a+rX,ug+w" -avzl --exclude={README.md,common,data,*.sh,generators*,.git,.gitignore} ./ blackarch.org:/var/www
