sudo useradd -m -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print$2}')" -s /bin/bash p1c2_2024_A1
sudo useradd -m -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print$2}')" -s /bin/bash p1c2_2024_A2
sudo useradd -m -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print$2}')" -s /bin/bash p1c2_2024_A3
sudo useradd -m -G p1c2_2024_gProfesores -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print$2}')" -s /bin/bash p1c2_2024_P1

sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod 760 /Examenes-UTN/alumno_2

sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3

sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 750 /Examenes-UTN/profesores

sudo su - p1c2_2024_A1 -c "cd /Examenes-UTN/alumno_1 && whoami > validar.txt"

sudo su - p1c2_2024_A2 -c "cd /Examenes-UTN/alumno_2 && whoami > validar.txt"

sudo su - p1c2_2024_A3 -c "cd /Examenes-UTN/alumno_3 && whoami > validar.txt"

sudo su - p1c2_2024_P1 -c "cd /Examenes-UTN/profesores && whoami > validar.txt"
