rsync --chmod "a+rX,ug+w" -avzl --exclude={common,data,generate-site.sh,update-tools.sh,generators*,sync.sh,.git,.gitignore} ./ blackarch.org:/nginx/var/www
