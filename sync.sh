rsync --chmod "a+rX,ug+w" -avzl --exclude={README.md,common,data,*.sh,generators*,sync.sh,.git,.gitignore} ./ blackarch.org:/var/www
