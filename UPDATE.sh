




echo -e "           /\                     \n          /  \                    \n         /    \                   \n        /      \                  \n_______/        \          _______\n                 \        /       \n                  \      /        \n                   \    /         \n                    \  /          \n	             \/           \n"

echo -e 'Updating data from /home/seismo/ \n Copying REA and WAV directories to data_update directory...'
sleep 2

cp -avr /home/seismo/REA/ /home/doctus/Documentos/Thesis_Focal_Mechanisms/
#cp -avr /home/seismo/WAV/ /home/doctus/Documentos/Focal_Tesis/data_update/

echo -e "Updating 100%\n Writing history file. Do not erase the file"
sleep 0.5
date >> 'history.txt'
echo "Done"
sleep 2
echo "Beginnig Git upload of REA data"
rm UPDATE.sh~
git add *
git commit -m "Actualizacion de datos"
git push -u origin master
echo "Fucking done, My Master"

