rsync -avzl --exclude={generate-site.sh,update-tools.sh,generators*,sync.sh,.git,.gitignore} . blackarch.org:/nginx/var/www/.new-site/.
