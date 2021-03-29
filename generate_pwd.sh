students=(
iavseenko
iakimenko
dvorobyov
ygladkikh
kgrishchenko
yderkachev
adubinsky
adyakov
aermokhin
vzharkov
izykov
oilyin
mkachaev
kalexander
dkoneva
kdenis
akorotkikh
alapenko
alevanov
vlomakov
amakarov
nmezhevova
mdmitry
nnaranov
nevgeny
gosipenkov
kpakhtusov
sperfilyev
pdmitry
araev
pryzhov
asemyonov
dtirskikh
etishchenko
aurzov
yfurman
acheryabkin
ashanin
ashpynov
bektova
eyarov
ayashin
dshubina
dlybin
dsinelnikov
msipatov
asamoilov
dutkina
      )
      for student in "${students[@]}"; do
              p=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w16 | head -n1)
              useradd -m $student
              (echo "$p"; echo "$p") | passwd $student
              usermod -a -G rt $student
              echo "${student} ${p}" >> passwords.txt
      done
