#! /bin/bash

echo "Comentario para el commit: "
read comentario
echo "Copiando ficheros al repositorio"
#SpecWeb
cp  /home/SPECweb2005/Test.config /git/google/prueba/SpecWeb
cp /home/SPECweb2005/SPECweb_Support.config /git/google/prueba/SpecWeb
cp /home/SPECweb2005/run-*  /git/google/prueba/SpecWeb/

cp /home/SPECweb2005/results  /git/google/prueba/SpecWeb/results_dist

cp /home/SPECweb2005/wafgen/unix/support_image_props.rc /git/ /git/google/prueba/SpecWeb/wafgen/unix/
cp /home/SPECweb2005/wafgen/unix/support_downloads_props.rc /git/google/prueba/SpecWeb/wafgen/unix/
cp /home/SPECweb2005/Test.* /git/google/prueba/SpecWeb
cp /git/gitrun.sh /git/google/prueba


cd /git
git init
git add *
git commit -a -m "$comentario"
git push
