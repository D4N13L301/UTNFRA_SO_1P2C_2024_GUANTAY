sudo fdisk -l
sudo fdisk /dev/sdc << FIN
n
p
1

+909MB
n
p
2

+909MB
n
p
3

+909MB
n
p
4

+909MB
n
p
5

+909MB
n
p
6

+909MB
n
p
7

+909MB
n
p
8

+909MB
n
p
9

+909MB
n
p
10

w
FIN

sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc4
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7
sudo mkfs.ext4 /dev/sdc8
sudo mkfs.ext4 /dev/sdc9
sudo mkfs.ext4 /dev/sdc10

sudo nano /etc/fstab

/dev/sdb1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0
/dev/sdb1 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0
/dev/sdb1 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0
/dev/sdb1 /Examenes-UTN/profesores ext4 defaults 0 0

sudo mount -a
