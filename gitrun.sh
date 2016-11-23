#! /bin/bash

echo "Comentario para el commit: "
read comentario
echo "Copiando ficheros al repositorio"
cp /etc/xen/* /git/etc/xen/
cp /etc/default/grub /git/etc/default/
cp ./gitrun.sh /git/

cd /git
git init
git add *
git commit -a -m "$comentario"
git push
