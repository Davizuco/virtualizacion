#! /bin/bash

echo "Comentario para el commit: "
read comentario
echo "Copiando ficheros al repositorio"
cp /etc/xen/* /git/etc/xen/
cp /etc/default/grub /git/etc/default/

# SPECweb
cp /home/SPECweb2005/wafgen/unix/support_image_props.rc /git/ /git/SPECweb/wafgen/unix/
cp /home/SPECweb2005/wafgen/unix/support_downloads_props.rc /git/SPECweb/wafgen/unix/
cp /home/SPECweb2005/Test.* /git/SPECweb/
#cp ./gitrun.sh /git/

# LXD
cp /etc/lxc/*.conf /git/etc/lxd/
cp /var/lib/lxc/my_jessie/conf* /git/var/lib/lxc/my_jessie/

cd /git
git init
git add *
git commit -a -m "$comentario"
git push
