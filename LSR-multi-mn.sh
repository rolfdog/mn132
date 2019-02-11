echo "Installing required packages";

add-apt-repository ppa:bitcoin/bitcoin && apt-get install cpulimit && apt-get -y update && apt-get -y install libboost-all-dev libcrypto++-dev libqrencode-dev libminiupnpc-dev libgmp-dev libgmp3-dev autoconf autogen automake bsdmainutils libzmq3-dev libminiupnpc-dev libevent-dev libdb4.8-dev libdb4.8++-dev unzip

echo "Done installing";

echo "Setting up swap space";

dd if=/dev/zero of=/swapfile bs=1M count=300096 && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo "/swapfile none swap defaults 0 0" >> /etc/fstab

echo "Setting up user accounts";

useradd -m -s /bin/bash mn1 && useradd -m -s /bin/bash mn2 && useradd -m -s /bin/bash mn3 && useradd -m -s /bin/bash mn4 && usermod -aG sudo mn1 && usermod -aG sudo mn2 && usermod -aG sudo mn3 && usermod -aG sudo mn4
useradd -m -s /bin/bash mn5 && useradd -m -s /bin/bash mn6 && useradd -m -s /bin/bash mn7 && useradd -m -s /bin/bash mn8 && usermod -aG sudo mn5 && usermod -aG sudo mn6 && usermod -aG sudo mn7 && usermod -aG sudo mn8
useradd -m -s /bin/bash mn9 && useradd -m -s /bin/bash mn10 && useradd -m -s /bin/bash mn11 && useradd -m -s /bin/bash mn12 && usermod -aG sudo mn9 && usermod -aG sudo mn10 && usermod -aG sudo mn11 && usermod -aG sudo mn12
useradd -m -s /bin/bash mn13 && useradd -m -s /bin/bash mn14 && useradd -m -s /bin/bash mn15 && useradd -m -s /bin/bash mn16 && usermod -aG sudo mn13 && usermod -aG sudo mn14 && usermod -aG sudo mn15 && usermod -aG sudo mn16
useradd -m -s /bin/bash mn17 && useradd -m -s /bin/bash mn18 && useradd -m -s /bin/bash mn19 && useradd -m -s /bin/bash mn20 && usermod -aG sudo mn17 && usermod -aG sudo mn18 && usermod -aG sudo mn19 && usermod -aG sudo mn20
useradd -m -s /bin/bash mn21 && useradd -m -s /bin/bash mn22 && useradd -m -s /bin/bash mn23 && useradd -m -s /bin/bash mn24 && usermod -aG sudo mn21 && usermod -aG sudo mn22 && usermod -aG sudo mn23 && usermod -aG sudo mn24
useradd -m -s /bin/bash mn25 && useradd -m -s /bin/bash mn26 && useradd -m -s /bin/bash mn27 && useradd -m -s /bin/bash mn28 && usermod -aG sudo mn25 && usermod -aG sudo mn26 && usermod -aG sudo mn27 && usermod -aG sudo mn28
useradd -m -s /bin/bash mn29 && useradd -m -s /bin/bash mn30 && useradd -m -s /bin/bash mn31 && useradd -m -s /bin/bash mn32 && usermod -aG sudo mn29 && usermod -aG sudo mn30 && usermod -aG sudo mn31 && usermod -aG sudo mn32
useradd -m -s /bin/bash mn33 && useradd -m -s /bin/bash mn34 && useradd -m -s /bin/bash mn35 && useradd -m -s /bin/bash mn36 && usermod -aG sudo mn33 && usermod -aG sudo mn34 && usermod -aG sudo mn35 && usermod -aG sudo mn36
useradd -m -s /bin/bash mn37 && useradd -m -s /bin/bash mn38 && useradd -m -s /bin/bash mn39 && useradd -m -s /bin/bash mn40 && usermod -aG sudo mn37 && usermod -aG sudo mn38 && usermod -aG sudo mn39 && usermod -aG sudo mn40
useradd -m -s /bin/bash mn41 && useradd -m -s /bin/bash mn42 && useradd -m -s /bin/bash mn43 && useradd -m -s /bin/bash mn44 && usermod -aG sudo mn41 && usermod -aG sudo mn42 && usermod -aG sudo mn43 && usermod -aG sudo mn44
useradd -m -s /bin/bash mn45 && useradd -m -s /bin/bash mn46 && useradd -m -s /bin/bash mn47 && useradd -m -s /bin/bash mn48 && usermod -aG sudo mn45 && usermod -aG sudo mn46 && usermod -aG sudo mn47 && usermod -aG sudo mn48
useradd -m -s /bin/bash mn53 && useradd -m -s /bin/bash mn54 && useradd -m -s /bin/bash mn55 && useradd -m -s /bin/bash mn56 && usermod -aG sudo mn53 && usermod -aG sudo mn54 && usermod -aG sudo mn55 && usermod -aG sudo mn56
useradd -m -s /bin/bash mn57 && useradd -m -s /bin/bash mn58 && useradd -m -s /bin/bash mn59 && useradd -m -s /bin/bash mn60 && usermod -aG sudo mn57 && usermod -aG sudo mn58 && usermod -aG sudo mn59 && usermod -aG sudo mn60
useradd -m -s /bin/bash mn61 && useradd -m -s /bin/bash mn62 && useradd -m -s /bin/bash mn63 && useradd -m -s /bin/bash mn64 && usermod -aG sudo mn61 && usermod -aG sudo mn62 && usermod -aG sudo mn63 && usermod -aG sudo mn64

NODEIP=$(curl -s4 icanhazip.com)

RPCUSR1=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW1=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT1=9333
RPCPORT1=9334

RPCUSR2=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW2=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT2=9335
RPCPORT2=9336

RPCUSR3=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW3=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT3=9337
RPCPORT3=9338

RPCUSR4=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW4=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT4=9339
RPCPORT4=9340

RPCUSR5=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW5=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT5=9341
RPCPORT5=9342

RPCUSR6=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW6=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT6=9343
RPCPORT6=9344

RPCUSR7=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW7=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT7=9345
RPCPORT7=9346

RPCUSR8=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW8=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT8=9347
RPCPORT8=9348

RPCUSR9=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW9=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT9=9349
RPCPORT9=9350

RPCUSR10=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW10=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT10=9351
RPCPORT10=9352

RPCUSR11=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW11=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT11=9353
RPCPORT11=9354

RPCUSR12=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW12=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT12=9355
RPCPORT12=9356

RPCUSR13=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW13=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT13=9357
RPCPORT13=9358

RPCUSR14=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW14=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT14=9359
RPCPORT14=9360

RPCUSR15=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW15=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT15=9361
RPCPORT15=9362

RPCUSR16=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW16=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT16=9363
RPCPORT16=9364

RPCUSR17=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW17=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT17=9365
RPCPORT17=9366

RPCUSR18=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW18=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT18=9367
RPCPORT18=9368

RPCUSR19=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW19=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT19=9369
RPCPORT19=9370

RPCUSR20=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW20=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT20=9371
RPCPORT20=9372

RPCUSR21=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW21=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT21=9373
RPCPORT21=9374

RPCUSR22=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW22=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT22=9375
RPCPORT22=9376

RPCUSR23=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW23=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT23=9377
RPCPORT23=9378

RPCUSR24=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW24=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT24=9379
RPCPORT24=9380

RPCUSR25=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW25=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT25=9381
RPCPORT25=9382

RPCUSR26=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW26=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT26=9383
RPCPORT26=9384

RPCUSR27=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW27=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT27=9385
RPCPORT27=9386

RPCUSR28=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW28=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT28=9387
RPCPORT28=9388

RPCUSR29=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW29=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT29=9389
RPCPORT29=9390

RPCUSR30=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW30=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT30=9391
RPCPORT30=9392

RPCUSR31=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW31=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT31=9393
RPCPORT31=9394

RPCUSR32=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW32=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT32=9395
RPCPORT32=9396

RPCUSR33=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW33=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT33=9397
RPCPORT33=9398

RPCUSR34=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW34=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT34=9399
RPCPORT34=9400

RPCUSR35=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW35=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT35=9401
RPCPORT35=9402

RPCUSR36=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW36=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT36=9403
RPCPORT36=9404

RPCUSR37=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW37=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT37=9405
RPCPORT37=9406

RPCUSR38=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW38=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT38=9407
RPCPORT38=9408

RPCUSR39=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW39=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT39=9409
RPCPORT39=9410

RPCUSR40=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW40=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT40=9411
RPCPORT40=9412

RPCUSR41=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW41=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT41=9413
RPCPORT41=9414

RPCUSR42=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW42=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT42=9415
RPCPORT42=9416

RPCUSR43=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW43=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT43=9417
RPCPORT43=9418

RPCUSR44=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW44=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT44=9419
RPCPORT44=9420

RPCUSR45=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW45=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT45=9421
RPCPORT45=9422

RPCUSR46=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW46=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT46=9423
RPCPORT46=9424

RPCUSR47=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW47=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT47=9425
RPCPORT47=9426

RPCUSR48=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW48=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT48=9427
RPCPORT48=9428

RPCUSR49=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW49=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT49=9429
RPCPORT49=9430

RPCUSR50=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW50=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT50=9431
RPCPORT50=9432

RPCUSR51=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW51=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT51=9433
RPCPORT51=9434

RPCUSR52=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW52=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT52=9435
RPCPORT52=9436

RPCUSR53=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW53=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT53=9437
RPCPORT53=9438

RPCUSR54=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW54=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT54=9439
RPCPORT54=9440

RPCUSR55=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW55=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT55=9441
RPCPORT55=9442

RPCUSR56=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW56=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT56=9443
RPCPORT56=9444

RPCUSR57=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW57=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT57=9445
RPCPORT57=9446

RPCUSR58=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW58=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT58=9447
RPCPORT58=9448

RPCUSR59=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW59=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT59=9449
RPCPORT59=9450

RPCUSR60=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW60=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT60=9451
RPCPORT60=9452

RPCUSR61=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW61=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT61=9453
RPCPORT61=9454

RPCUSR62=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW62=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT62=9455
RPCPORT62=9456

RPCUSR63=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW63=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT63=9457
RPCPORT63=9458

RPCUSR64=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w10 | head -n1)
RPCPW64=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w22 | head -n1)
PORT64=9459
RPCPORT64=9460

echo "Installing masternode 1";

cd /home/mn1 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn1/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR1
rpcpassword=$RPCPW1
rpcport=$RPCPORT1
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT1
EOF

cd /root && wget https://github.com/LeisureCoinProject/LeisureCoin-Core-Masternode/releases/download/v2.0/leisure_mn.zip && unzip leisure_mn.zip
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn1 && chmod -R 777 /home/mn1/LeisureCoin-cli && chmod -R 777 /home/mn1/LeisureCoind && chmod -R 777 /home/mn1/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn2 && chmod -R 777 /home/mn2/LeisureCoin-cli && chmod -R 777 /home/mn2/LeisureCoind && chmod -R 777 /home/mn2/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn3 && chmod -R 777 /home/mn3/LeisureCoin-cli && chmod -R 777 /home/mn3/LeisureCoind && chmod -R 777 /home/mn3/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn4 && chmod -R 777 /home/mn4/LeisureCoin-cli && chmod -R 777 /home/mn4/LeisureCoind && chmod -R 777 /home/mn4/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn5 && chmod -R 777 /home/mn5/LeisureCoin-cli && chmod -R 777 /home/mn5/LeisureCoind && chmod -R 777 /home/mn5/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn6 && chmod -R 777 /home/mn6/LeisureCoin-cli && chmod -R 777 /home/mn6/LeisureCoind && chmod -R 777 /home/mn6/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn7 && chmod -R 777 /home/mn7/LeisureCoin-cli && chmod -R 777 /home/mn7/LeisureCoind && chmod -R 777 /home/mn7/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn8 && chmod -R 777 /home/mn8/LeisureCoin-cli && chmod -R 777 /home/mn8/LeisureCoind && chmod -R 777 /home/mn8/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn9 && chmod -R 777 /home/mn9/LeisureCoin-cli && chmod -R 777 /home/mn9/LeisureCoind && chmod -R 777 /home/mn9/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn10 && chmod -R 777 /home/mn10/LeisureCoin-cli && chmod -R 777 /home/mn10/LeisureCoind && chmod -R 777 /home/mn10/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn11 && chmod -R 777 /home/mn11/LeisureCoin-cli && chmod -R 777 /home/mn11/LeisureCoind && chmod -R 777 /home/mn11/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn12 && chmod -R 777 /home/mn12/LeisureCoin-cli && chmod -R 777 /home/mn12/LeisureCoind && chmod -R 777 /home/mn12/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn13 && chmod -R 777 /home/mn13/LeisureCoin-cli && chmod -R 777 /home/mn13/LeisureCoind && chmod -R 777 /home/mn13/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn14 && chmod -R 777 /home/mn14/LeisureCoin-cli && chmod -R 777 /home/mn14/LeisureCoind && chmod -R 777 /home/mn14/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn15 && chmod -R 777 /home/mn15/LeisureCoin-cli && chmod -R 777 /home/mn15/LeisureCoind && chmod -R 777 /home/mn15/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn16 && chmod -R 777 /home/mn16/LeisureCoin-cli && chmod -R 777 /home/mn16/LeisureCoind && chmod -R 777 /home/mn16/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn17 && chmod -R 777 /home/mn17/LeisureCoin-cli && chmod -R 777 /home/mn17/LeisureCoind && chmod -R 777 /home/mn17/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn18 && chmod -R 777 /home/mn18/LeisureCoin-cli && chmod -R 777 /home/mn18/LeisureCoind && chmod -R 777 /home/mn18/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn19 && chmod -R 777 /home/mn19/LeisureCoin-cli && chmod -R 777 /home/mn19/LeisureCoind && chmod -R 777 /home/mn19/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn20 && chmod -R 777 /home/mn20/LeisureCoin-cli && chmod -R 777 /home/mn20/LeisureCoind && chmod -R 777 /home/mn20/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn21 && chmod -R 777 /home/mn21/LeisureCoin-cli && chmod -R 777 /home/mn21/LeisureCoind && chmod -R 777 /home/mn21/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn22 && chmod -R 777 /home/mn22/LeisureCoin-cli && chmod -R 777 /home/mn22/LeisureCoind && chmod -R 777 /home/mn22/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn23 && chmod -R 777 /home/mn23/LeisureCoin-cli && chmod -R 777 /home/mn23/LeisureCoind && chmod -R 777 /home/mn23/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn24 && chmod -R 777 /home/mn24/LeisureCoin-cli && chmod -R 777 /home/mn24/LeisureCoind && chmod -R 777 /home/mn24/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn25 && chmod -R 777 /home/mn25/LeisureCoin-cli && chmod -R 777 /home/mn25/LeisureCoind && chmod -R 777 /home/mn25/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn26 && chmod -R 777 /home/mn26/LeisureCoin-cli && chmod -R 777 /home/mn26/LeisureCoind && chmod -R 777 /home/mn26/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn27 && chmod -R 777 /home/mn27/LeisureCoin-cli && chmod -R 777 /home/mn27/LeisureCoind && chmod -R 777 /home/mn27/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn28 && chmod -R 777 /home/mn28/LeisureCoin-cli && chmod -R 777 /home/mn28/LeisureCoind && chmod -R 777 /home/mn28/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn29 && chmod -R 777 /home/mn29/LeisureCoin-cli && chmod -R 777 /home/mn29/LeisureCoind && chmod -R 777 /home/mn29/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn30 && chmod -R 777 /home/mn30/LeisureCoin-cli && chmod -R 777 /home/mn30/LeisureCoind && chmod -R 777 /home/mn30/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn31 && chmod -R 777 /home/mn31/LeisureCoin-cli && chmod -R 777 /home/mn31/LeisureCoind && chmod -R 777 /home/mn31/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn32 && chmod -R 777 /home/mn32/LeisureCoin-cli && chmod -R 777 /home/mn32/LeisureCoind && chmod -R 777 /home/mn32/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn33 && chmod -R 777 /home/mn33/LeisureCoin-cli && chmod -R 777 /home/mn33/LeisureCoind && chmod -R 777 /home/mn33/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn34 && chmod -R 777 /home/mn34/LeisureCoin-cli && chmod -R 777 /home/mn34/LeisureCoind && chmod -R 777 /home/mn34/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn35 && chmod -R 777 /home/mn35/LeisureCoin-cli && chmod -R 777 /home/mn35/LeisureCoind && chmod -R 777 /home/mn35/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn36 && chmod -R 777 /home/mn36/LeisureCoin-cli && chmod -R 777 /home/mn36/LeisureCoind && chmod -R 777 /home/mn36/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn37 && chmod -R 777 /home/mn37/LeisureCoin-cli && chmod -R 777 /home/mn37/LeisureCoind && chmod -R 777 /home/mn37/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn38 && chmod -R 777 /home/mn38/LeisureCoin-cli && chmod -R 777 /home/mn38/LeisureCoind && chmod -R 777 /home/mn38/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn39 && chmod -R 777 /home/mn39/LeisureCoin-cli && chmod -R 777 /home/mn39/LeisureCoind && chmod -R 777 /home/mn39/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn40 && chmod -R 777 /home/mn40/LeisureCoin-cli && chmod -R 777 /home/mn40/LeisureCoind && chmod -R 777 /home/mn40/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn41 && chmod -R 777 /home/mn41/LeisureCoin-cli && chmod -R 777 /home/mn41/LeisureCoind && chmod -R 777 /home/mn41/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn42 && chmod -R 777 /home/mn42/LeisureCoin-cli && chmod -R 777 /home/mn42/LeisureCoind && chmod -R 777 /home/mn42/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn43 && chmod -R 777 /home/mn43/LeisureCoin-cli && chmod -R 777 /home/mn43/LeisureCoind && chmod -R 777 /home/mn43/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn44 && chmod -R 777 /home/mn44/LeisureCoin-cli && chmod -R 777 /home/mn44/LeisureCoind && chmod -R 777 /home/mn44/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn45 && chmod -R 777 /home/mn45/LeisureCoin-cli && chmod -R 777 /home/mn45/LeisureCoind && chmod -R 777 /home/mn45/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn46 && chmod -R 777 /home/mn46/LeisureCoin-cli && chmod -R 777 /home/mn46/LeisureCoind && chmod -R 777 /home/mn46/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn47 && chmod -R 777 /home/mn47/LeisureCoin-cli && chmod -R 777 /home/mn47/LeisureCoind && chmod -R 777 /home/mn47/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn48 && chmod -R 777 /home/mn48/LeisureCoin-cli && chmod -R 777 /home/mn48/LeisureCoind && chmod -R 777 /home/mn48/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn49 && chmod -R 777 /home/mn49/LeisureCoin-cli && chmod -R 777 /home/mn49/LeisureCoind && chmod -R 777 /home/mn49/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn50 && chmod -R 777 /home/mn50/LeisureCoin-cli && chmod -R 777 /home/mn50/LeisureCoind && chmod -R 777 /home/mn50/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn51 && chmod -R 777 /home/mn51/LeisureCoin-cli && chmod -R 777 /home/mn51/LeisureCoind && chmod -R 777 /home/mn51/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn52 && chmod -R 777 /home/mn52/LeisureCoin-cli && chmod -R 777 /home/mn52/LeisureCoind && chmod -R 777 /home/mn52/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn53 && chmod -R 777 /home/mn53/LeisureCoin-cli && chmod -R 777 /home/mn53/LeisureCoind && chmod -R 777 /home/mn53/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn54 && chmod -R 777 /home/mn54/LeisureCoin-cli && chmod -R 777 /home/mn54/LeisureCoind && chmod -R 777 /home/mn54/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn55 && chmod -R 777 /home/mn55/LeisureCoin-cli && chmod -R 777 /home/mn55/LeisureCoind && chmod -R 777 /home/mn55/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn56 && chmod -R 777 /home/mn56/LeisureCoin-cli && chmod -R 777 /home/mn56/LeisureCoind && chmod -R 777 /home/mn56/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn57 && chmod -R 777 /home/mn57/LeisureCoin-cli && chmod -R 777 /home/mn57/LeisureCoind && chmod -R 777 /home/mn57/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn58 && chmod -R 777 /home/mn58/LeisureCoin-cli && chmod -R 777 /home/mn58/LeisureCoind && chmod -R 777 /home/mn58/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn59 && chmod -R 777 /home/mn59/LeisureCoin-cli && chmod -R 777 /home/mn59/LeisureCoind && chmod -R 777 /home/mn59/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn60 && chmod -R 777 /home/mn60/LeisureCoin-cli && chmod -R 777 /home/mn60/LeisureCoind && chmod -R 777 /home/mn60/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn61 && chmod -R 777 /home/mn61/LeisureCoin-cli && chmod -R 777 /home/mn61/LeisureCoind && chmod -R 777 /home/mn61/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn62 && chmod -R 777 /home/mn62/LeisureCoin-cli && chmod -R 777 /home/mn62/LeisureCoind && chmod -R 777 /home/mn62/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn63 && chmod -R 777 /home/mn63/LeisureCoin-cli && chmod -R 777 /home/mn63/LeisureCoind && chmod -R 777 /home/mn63/LeisureCoin-tx
cp LeisureCoin-cli LeisureCoind LeisureCoin-tx /home/mn64 && chmod -R 777 /home/mn64/LeisureCoin-cli && chmod -R 777 /home/mn64/LeisureCoind && chmod -R 777 /home/mn64/LeisureCoin-tx

su - mn1 -c './LeisureCoind -daemon'
sleep 20

KEY1=$(su - mn1 -c './LeisureCoin-cli masternode genkey')
KEY2=$(su - mn2 -c './LeisureCoin-cli masternode genkey')
KEY3=$(su - mn3 -c './LeisureCoin-cli masternode genkey')
KEY4=$(su - mn4 -c './LeisureCoin-cli masternode genkey')
KEY5=$(su - mn5 -c './LeisureCoin-cli masternode genkey')
KEY6=$(su - mn6 -c './LeisureCoin-cli masternode genkey')
KEY7=$(su - mn7 -c './LeisureCoin-cli masternode genkey')
KEY8=$(su - mn8 -c './LeisureCoin-cli masternode genkey')
KEY9=$(su - mn9 -c './LeisureCoin-cli masternode genkey')
KEY10=$(su - mn10 -c './LeisureCoin-cli masternode genkey')
KEY11=$(su - mn11 -c './LeisureCoin-cli masternode genkey')
KEY12=$(su - mn12 -c './LeisureCoin-cli masternode genkey')
KEY13=$(su - mn13 -c './LeisureCoin-cli masternode genkey')
KEY14=$(su - mn14 -c './LeisureCoin-cli masternode genkey')
KEY15=$(su - mn15 -c './LeisureCoin-cli masternode genkey')
KEY16=$(su - mn16 -c './LeisureCoin-cli masternode genkey')
KEY17=$(su - mn17 -c './LeisureCoin-cli masternode genkey')
KEY18=$(su - mn18 -c './LeisureCoin-cli masternode genkey')
KEY19=$(su - mn19 -c './LeisureCoin-cli masternode genkey')
KEY20=$(su - mn20 -c './LeisureCoin-cli masternode genkey')
KEY21=$(su - mn21 -c './LeisureCoin-cli masternode genkey')
KEY22=$(su - mn22 -c './LeisureCoin-cli masternode genkey')
KEY23=$(su - mn23 -c './LeisureCoin-cli masternode genkey')
KEY24=$(su - mn24 -c './LeisureCoin-cli masternode genkey')
KEY25=$(su - mn25 -c './LeisureCoin-cli masternode genkey')
KEY26=$(su - mn26 -c './LeisureCoin-cli masternode genkey')
KEY27=$(su - mn27 -c './LeisureCoin-cli masternode genkey')
KEY28=$(su - mn28 -c './LeisureCoin-cli masternode genkey')
KEY29=$(su - mn29 -c './LeisureCoin-cli masternode genkey')
KEY30=$(su - mn30 -c './LeisureCoin-cli masternode genkey')
KEY31=$(su - mn31 -c './LeisureCoin-cli masternode genkey')
KEY32=$(su - mn32 -c './LeisureCoin-cli masternode genkey')
KEY33=$(su - mn33 -c './LeisureCoin-cli masternode genkey')
KEY34=$(su - mn34 -c './LeisureCoin-cli masternode genkey')
KEY35=$(su - mn35 -c './LeisureCoin-cli masternode genkey')
KEY36=$(su - mn36 -c './LeisureCoin-cli masternode genkey')
KEY37=$(su - mn37 -c './LeisureCoin-cli masternode genkey')
KEY38=$(su - mn38 -c './LeisureCoin-cli masternode genkey')
KEY39=$(su - mn39 -c './LeisureCoin-cli masternode genkey')
KEY40=$(su - mn40 -c './LeisureCoin-cli masternode genkey')
KEY41=$(su - mn41 -c './LeisureCoin-cli masternode genkey')
KEY42=$(su - mn42 -c './LeisureCoin-cli masternode genkey')
KEY43=$(su - mn43 -c './LeisureCoin-cli masternode genkey')
KEY44=$(su - mn44 -c './LeisureCoin-cli masternode genkey')
KEY45=$(su - mn45 -c './LeisureCoin-cli masternode genkey')
KEY46=$(su - mn46 -c './LeisureCoin-cli masternode genkey')
KEY47=$(su - mn47 -c './LeisureCoin-cli masternode genkey')
KEY48=$(su - mn48 -c './LeisureCoin-cli masternode genkey')
KEY49=$(su - mn49 -c './LeisureCoin-cli masternode genkey')
KEY50=$(su - mn50 -c './LeisureCoin-cli masternode genkey')
KEY51=$(su - mn51 -c './LeisureCoin-cli masternode genkey')
KEY52=$(su - mn52 -c './LeisureCoin-cli masternode genkey')
KEY53=$(su - mn53 -c './LeisureCoin-cli masternode genkey')
KEY54=$(su - mn54 -c './LeisureCoin-cli masternode genkey')
KEY55=$(su - mn55 -c './LeisureCoin-cli masternode genkey')
KEY56=$(su - mn56 -c './LeisureCoin-cli masternode genkey')
KEY57=$(su - mn57 -c './LeisureCoin-cli masternode genkey')
KEY58=$(su - mn58 -c './LeisureCoin-cli masternode genkey')
KEY59=$(su - mn59 -c './LeisureCoin-cli masternode genkey')
KEY60=$(su - mn60 -c './LeisureCoin-cli masternode genkey')
KEY61=$(su - mn61 -c './LeisureCoin-cli masternode genkey')
KEY62=$(su - mn62 -c './LeisureCoin-cli masternode genkey')
KEY63=$(su - mn63 -c './LeisureCoin-cli masternode genkey')
KEY64=$(su - mn64 -c './LeisureCoin-cli masternode genkey')

su - mn1 -c './LeisureCoin-cli stop'
echo "will wait 60 seconds..";
sleep 60

cat << EOF >> /home/mn1/.LeisureCoin/LeisureCoin.conf
bind=$NODEIP:$PORT1
gen=1
masternode=1
masternodeprivkey=$KEY1
externalip=$NODEIP:$PORT1
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 2";

cd /home/mn2 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn2/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR2
rpcpassword=$RPCPW2
rpcport=$RPCPORT2
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT2
bind=$NODEIP:$PORT2
gen=1
masternode=1
masternodeprivkey=$KEY2
externalip=$NODEIP:$PORT2
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 3";

cd /home/mn3 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn3/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR3
rpcpassword=$RPCPW3
rpcport=$RPCPORT3
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT3
bind=$NODEIP:$PORT3
gen=1
masternode=1
masternodeprivkey=$KEY3
externalip=$NODEIP:$PORT3
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 4";

cd /home/mn4 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn4/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR4
rpcpassword=$RPCPW4
rpcport=$RPCPORT4
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT4
bind=$NODEIP:$PORT4
gen=1
masternode=1
masternodeprivkey=$KEY4
externalip=$NODEIP:$PORT4
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 5";

cd /home/mn5 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn5/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR5
rpcpassword=$RPCPW5
rpcport=$RPCPORT5
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT5
bind=$NODEIP:$PORT5
gen=1
masternode=1
masternodeprivkey=$KEY5
externalip=$NODEIP:$PORT5
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 6";

cd /home/mn6 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn6/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR6
rpcpassword=$RPCPW6
rpcport=$RPCPORT6
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT6
bind=$NODEIP:$PORT6
gen=1
masternode=1
masternodeprivkey=$KEY6
externalip=$NODEIP:$PORT6
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 7";

cd /home/mn7 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn7/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR7
rpcpassword=$RPCPW7
rpcport=$RPCPORT7
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT7
bind=$NODEIP:$PORT7
gen=1
masternode=1
masternodeprivkey=$KEY7
externalip=$NODEIP:$PORT7
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 8";

cd /home/mn8 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn8/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR8
rpcpassword=$RPCPW8
rpcport=$RPCPORT8
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT8
bind=$NODEIP:$PORT8
gen=1
masternode=1
masternodeprivkey=$KEY8
externalip=$NODEIP:$PORT8
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 9";

cd /home/mn9 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn9/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR9
rpcpassword=$RPCPW9
rpcport=$RPCPORT9
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT9
bind=$NODEIP:$PORT9
gen=1
masternode=1
masternodeprivkey=$KEY9
externalip=$NODEIP:$PORT9
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 10";

cd /home/mn10 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn10/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR10
rpcpassword=$RPCPW10
rpcport=$RPCPORT10
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT10
bind=$NODEIP:$PORT10
gen=1
masternode=1
masternodeprivkey=$KEY10
externalip=$NODEIP:$PORT10
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 11";

cd /home/mn11 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn11/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR11
rpcpassword=$RPCPW11
rpcport=$RPCPORT11
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT11
bind=$NODEIP:$PORT11
gen=1
masternode=1
masternodeprivkey=$KEY11
externalip=$NODEIP:$PORT11
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 12";

cd /home/mn12 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn12/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR12
rpcpassword=$RPCPW12
rpcport=$RPCPORT12
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT12
bind=$NODEIP:$PORT12
gen=1
masternode=1
masternodeprivkey=$KEY12
externalip=$NODEIP:$PORT12
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 13";

cd /home/mn13 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn13/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR13
rpcpassword=$RPCPW13
rpcport=$RPCPORT13
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT13
bind=$NODEIP:$PORT13
gen=1
masternode=1
masternodeprivkey=$KEY13
externalip=$NODEIP:$PORT13
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 14";

cd /home/mn14 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn14/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR14
rpcpassword=$RPCPW14
rpcport=$RPCPORT14
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT14
bind=$NODEIP:$PORT14
gen=1
masternode=1
masternodeprivkey=$KEY14
externalip=$NODEIP:$PORT14
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 15";

cd /home/mn15 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn15/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR15
rpcpassword=$RPCPW15
rpcport=$RPCPORT15
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT15
bind=$NODEIP:$PORT15
gen=1
masternode=1
masternodeprivkey=$KEY15
externalip=$NODEIP:$PORT8
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 16";

cd /home/mn16 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn16/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR16
rpcpassword=$RPCPW16
rpcport=$RPCPORT16
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT16
bind=$NODEIP:$PORT16
gen=1
masternode=1
masternodeprivkey=$KEY16
externalip=$NODEIP:$PORT16
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 17";

cd /home/mn17 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn17/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR17
rpcpassword=$RPCPW17
rpcport=$RPCPORT17
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT17
bind=$NODEIP:$PORT17
gen=1
masternode=1
masternodeprivkey=$KEY17
externalip=$NODEIP:$PORT17
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 18";

cd /home/mn18 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn18/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR18
rpcpassword=$RPCPW18
rpcport=$RPCPORT18
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT18
bind=$NODEIP:$PORT18
gen=1
masternode=1
masternodeprivkey=$KEY18
externalip=$NODEIP:$PORT18
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 19";

cd /home/mn19 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn19/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR19
rpcpassword=$RPCPW19
rpcport=$RPCPORT19
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT19
bind=$NODEIP:$PORT19
gen=1
masternode=1
masternodeprivkey=$KEY19
externalip=$NODEIP:$PORT19
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 20";

cd /home/mn20 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn20/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR20
rpcpassword=$RPCPW20
rpcport=$RPCPORT20
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT20
bind=$NODEIP:$PORT20
gen=1
masternode=1
masternodeprivkey=$KEY20
externalip=$NODEIP:$PORT20
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 21";

cd /home/mn21 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn21/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR21
rpcpassword=$RPCPW21
rpcport=$RPCPORT21
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT21
bind=$NODEIP:$PORT21
gen=1
masternode=1
masternodeprivkey=$KEY21
externalip=$NODEIP:$PORT21
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 22";

cd /home/mn22 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn22/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR22
rpcpassword=$RPCPW22
rpcport=$RPCPORT22
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT22
bind=$NODEIP:$PORT22
gen=1
masternode=1
masternodeprivkey=$KEY22
externalip=$NODEIP:$PORT22
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 23";

cd /home/mn23 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn23/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR23
rpcpassword=$RPCPW23
rpcport=$RPCPORT23
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT23
bind=$NODEIP:$PORT23
gen=1
masternode=1
masternodeprivkey=$KEY23
externalip=$NODEIP:$PORT23
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 24";

cd /home/mn24 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn24/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR24
rpcpassword=$RPCPW24
rpcport=$RPCPORT24
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT24
bind=$NODEIP:$PORT24
gen=1
masternode=1
masternodeprivkey=$KEY24
externalip=$NODEIP:$PORT24
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 25";

cd /home/mn25 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn25/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR25
rpcpassword=$RPCPW25
rpcport=$RPCPORT25
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT25
bind=$NODEIP:$PORT25
gen=1
masternode=1
masternodeprivkey=$KEY25
externalip=$NODEIP:$PORT25
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 26";

cd /home/mn26 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn26/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR26
rpcpassword=$RPCPW26
rpcport=$RPCPORT26
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT26
bind=$NODEIP:$PORT26
gen=1
masternode=1
masternodeprivkey=$KEY26
externalip=$NODEIP:$PORT26
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 27";

cd /home/mn27 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn27/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR27
rpcpassword=$RPCPW27
rpcport=$RPCPORT27
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT27
bind=$NODEIP:$PORT27
gen=1
masternode=1
masternodeprivkey=$KEY27
externalip=$NODEIP:$PORT27
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 28";

cd /home/mn28 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn28/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR28
rpcpassword=$RPCPW28
rpcport=$RPCPORT28
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT28
bind=$NODEIP:$PORT28
gen=1
masternode=1
masternodeprivkey=$KEY28
externalip=$NODEIP:$PORT28
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 29";

cd /home/mn29 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn29/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR29
rpcpassword=$RPCPW29
rpcport=$RPCPORT29
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT29
bind=$NODEIP:$PORT29
gen=1
masternode=1
masternodeprivkey=$KEY29
externalip=$NODEIP:$PORT29
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 30";

cd /home/mn30 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn30/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR30
rpcpassword=$RPCPW30
rpcport=$RPCPORT30
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT30
bind=$NODEIP:$PORT30
gen=1
masternode=1
masternodeprivkey=$KEY30
externalip=$NODEIP:$PORT30
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 31";

cd /home/mn31 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn31/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR31
rpcpassword=$RPCPW31
rpcport=$RPCPORT31
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT31
bind=$NODEIP:$PORT31
gen=1
masternode=1
masternodeprivkey=$KEY31
externalip=$NODEIP:$PORT31
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 32";

cd /home/mn32 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn32/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR32
rpcpassword=$RPCPW32
rpcport=$RPCPORT32
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT32
bind=$NODEIP:$PORT32
gen=1
masternode=1
masternodeprivkey=$KEY32
externalip=$NODEIP:$PORT32
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 33";

cd /home/mn33 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn33/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR33
rpcpassword=$RPCPW33
rpcport=$RPCPORT33
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT33
bind=$NODEIP:$PORT33
gen=1
masternode=1
masternodeprivkey=$KEY33
externalip=$NODEIP:$PORT33
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 34";

cd /home/mn34 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn34/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR34
rpcpassword=$RPCPW34
rpcport=$RPCPORT34
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT34
bind=$NODEIP:$PORT34
gen=1
masternode=1
masternodeprivkey=$KEY34
externalip=$NODEIP:$PORT34
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 35";

cd /home/mn35 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn35/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR35
rpcpassword=$RPCPW35
rpcport=$RPCPORT35
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT35
bind=$NODEIP:$PORT35
gen=1
masternode=1
masternodeprivkey=$KEY35
externalip=$NODEIP:$PORT35
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 36";

cd /home/mn36 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn36/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR36
rpcpassword=$RPCPW36
rpcport=$RPCPORT36
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT36
bind=$NODEIP:$PORT36
gen=1
masternode=1
masternodeprivkey=$KEY36
externalip=$NODEIP:$PORT36
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 37";

cd /home/mn37 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn37/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR37
rpcpassword=$RPCPW37
rpcport=$RPCPORT37
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT37
bind=$NODEIP:$PORT37
gen=1
masternode=1
masternodeprivkey=$KEY37
externalip=$NODEIP:$PORT37
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 38";

cd /home/mn38 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn38/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR38
rpcpassword=$RPCPW38
rpcport=$RPCPORT38
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT38
bind=$NODEIP:$PORT38
gen=1
masternode=1
masternodeprivkey=$KEY38
externalip=$NODEIP:$PORT38
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 39";

cd /home/mn39 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn39/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR39
rpcpassword=$RPCPW39
rpcport=$RPCPORT39
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT39
bind=$NODEIP:$PORT39
gen=1
masternode=1
masternodeprivkey=$KEY39
externalip=$NODEIP:$PORT39
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 40";

cd /home/mn40 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn40/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR40
rpcpassword=$RPCPW40
rpcport=$RPCPORT40
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT40
bind=$NODEIP:$PORT40
gen=1
masternode=1
masternodeprivkey=$KEY40
externalip=$NODEIP:$PORT40
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 41";

cd /home/mn41 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn41/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR41
rpcpassword=$RPCPW41
rpcport=$RPCPORT41
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT41
bind=$NODEIP:$PORT41
gen=1
masternode=1
masternodeprivkey=$KEY41
externalip=$NODEIP:$PORT41
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 42";

cd /home/mn42 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn42/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR42
rpcpassword=$RPCPW42
rpcport=$RPCPORT42
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT42
bind=$NODEIP:$PORT42
gen=1
masternode=1
masternodeprivkey=$KEY42
externalip=$NODEIP:$PORT42
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 43";

cd /home/mn43 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn43/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR43
rpcpassword=$RPCPW43
rpcport=$RPCPORT43
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT43
bind=$NODEIP:$PORT43
gen=1
masternode=1
masternodeprivkey=$KEY43
externalip=$NODEIP:$PORT43
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 44";

cd /home/mn44 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn44/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR44
rpcpassword=$RPCPW44
rpcport=$RPCPORT44
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT44
bind=$NODEIP:$PORT44
gen=1
masternode=1
masternodeprivkey=$KEY44
externalip=$NODEIP:$PORT44
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 45";

cd /home/mn45 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn45/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR45
rpcpassword=$RPCPW45
rpcport=$RPCPORT45
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT45
bind=$NODEIP:$PORT45
gen=1
masternode=1
masternodeprivkey=$KEY45
externalip=$NODEIP:$PORT45
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 46";

cd /home/mn46 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn46/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR46
rpcpassword=$RPCPW46
rpcport=$RPCPORT46
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT46
bind=$NODEIP:$PORT46
gen=1
masternode=1
masternodeprivkey=$KEY46
externalip=$NODEIP:$PORT46
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 47";

cd /home/mn47 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn47/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR47
rpcpassword=$RPCPW47
rpcport=$RPCPORT47
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT47
bind=$NODEIP:$PORT47
gen=1
masternode=1
masternodeprivkey=$KEY47
externalip=$NODEIP:$PORT47
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 48";

cd /home/mn48 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn48/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR48
rpcpassword=$RPCPW48
rpcport=$RPCPORT48
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT48
bind=$NODEIP:$PORT48
gen=1
masternode=1
masternodeprivkey=$KEY48
externalip=$NODEIP:$PORT48
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 49";

cd /home/mn49 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn49/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR49
rpcpassword=$RPCPW49
rpcport=$RPCPORT49
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT49
bind=$NODEIP:$PORT49
gen=1
masternode=1
masternodeprivkey=$KEY49
externalip=$NODEIP:$PORT49
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 50";

cd /home/mn50 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn50/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR50
rpcpassword=$RPCPW50
rpcport=$RPCPORT50
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT50
bind=$NODEIP:$PORT50
gen=1
masternode=1
masternodeprivkey=$KEY50
externalip=$NODEIP:$PORT50
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 51";

cd /home/mn51 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn51/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR51
rpcpassword=$RPCPW51
rpcport=$RPCPORT51
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT51
bind=$NODEIP:$PORT51
gen=1
masternode=1
masternodeprivkey=$KEY51
externalip=$NODEIP:$PORT51
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 52";

cd /home/mn52 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn52/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR52
rpcpassword=$RPCPW52
rpcport=$RPCPORT52
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT52
bind=$NODEIP:$PORT52
gen=1
masternode=1
masternodeprivkey=$KEY52
externalip=$NODEIP:$PORT52
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 53";

cd /home/mn53 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn53/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR53
rpcpassword=$RPCPW53
rpcport=$RPCPORT53
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT53
bind=$NODEIP:$PORT53
gen=1
masternode=1
masternodeprivkey=$KEY53
externalip=$NODEIP:$PORT53
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 54";

cd /home/mn54 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn54/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR54
rpcpassword=$RPCPW54
rpcport=$RPCPORT54
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT54
bind=$NODEIP:$PORT54
gen=1
masternode=1
masternodeprivkey=$KEY54
externalip=$NODEIP:$PORT54
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 55";

cd /home/mn55 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn55/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR55
rpcpassword=$RPCPW55
rpcport=$RPCPORT55
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT55
bind=$NODEIP:$PORT55
gen=1
masternode=1
masternodeprivkey=$KEY55
externalip=$NODEIP:$PORT55
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 56";

cd /home/mn56 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn56/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR56
rpcpassword=$RPCPW56
rpcport=$RPCPORT56
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT56
bind=$NODEIP:$PORT56
gen=1
masternode=1
masternodeprivkey=$KEY56
externalip=$NODEIP:$PORT56
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 57";

cd /home/mn57 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn57/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR57
rpcpassword=$RPCPW57
rpcport=$RPCPORT57
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT57
bind=$NODEIP:$PORT57
gen=1
masternode=1
masternodeprivkey=$KEY57
externalip=$NODEIP:$PORT57
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 58";

cd /home/mn58 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn58/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR58
rpcpassword=$RPCPW58
rpcport=$RPCPORT58
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT58
bind=$NODEIP:$PORT58
gen=1
masternode=1
masternodeprivkey=$KEY58
externalip=$NODEIP:$PORT58
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 59";

cd /home/mn59 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn59/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR59
rpcpassword=$RPCPW59
rpcport=$RPCPORT59
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT59
bind=$NODEIP:$PORT59
gen=1
masternode=1
masternodeprivkey=$KEY59
externalip=$NODEIP:$PORT59
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 60";

cd /home/mn60 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn60/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR60
rpcpassword=$RPCPW60
rpcport=$RPCPORT60
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT60
bind=$NODEIP:$PORT60
gen=1
masternode=1
masternodeprivkey=$KEY60
externalip=$NODEIP:$PORT60
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 61";

cd /home/mn61 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn61/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR61
rpcpassword=$RPCPW61
rpcport=$RPCPORT61
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT61
bind=$NODEIP:$PORT61
gen=1
masternode=1
masternodeprivkey=$KEY61
externalip=$NODEIP:$PORT61
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 62";

cd /home/mn62 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn62/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR62
rpcpassword=$RPCPW62
rpcport=$RPCPORT62
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT62
bind=$NODEIP:$PORT62
gen=1
masternode=1
masternodeprivkey=$KEY62
externalip=$NODEIP:$PORT62
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 63";

cd /home/mn63 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn63/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR63
rpcpassword=$RPCPW63
rpcport=$RPCPORT63
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT63
bind=$NODEIP:$PORT63
gen=1
masternode=1
masternodeprivkey=$KEY63
externalip=$NODEIP:$PORT63
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Installing masternode 64";

cd /home/mn64 && mkdir .LeisureCoin && chmod -R 777 .LeisureCoin

cat << EOF > /home/mn64/.LeisureCoin/LeisureCoin.conf
rpcuser=$RPCUSR64
rpcpassword=$RPCPW64
rpcport=$RPCPORT64
rpcallowip=127.0.0.1
listen=1
server=1
daemon=1
port=$PORT64
bind=$NODEIP:$PORT64
gen=1
masternode=1
masternodeprivkey=$KEY64
externalip=$NODEIP:$PORT64
addnode=91.121.209.203
addnode=144.202.59.174
addnode=209.250.240.10
addnode=108.61.89.169
addnode=95.179.135.170
addnode=80.211.171.30
addnode=159.203.112.169
addnode=45.32.44.136
addnode=194.182.82.199
EOF

echo "Starting LeisureCoin clients";
cd /root
rm LSR-multi-mn.sh
rm LeisureCoind
rm LeisureCoin-cli
rm LeisureCoin-tx
rm leisure_mn.zip
su - mn1 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn1/LeisureCoind -l 1 -b
su - mn2 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn2/LeisureCoind -l 1 -b
su - mn3 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn3/LeisureCoind -l 1 -b
su - mn4 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn4/LeisureCoind -l 1 -b
su - mn5 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn5/LeisureCoind -l 1 -b
su - mn6 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn6/LeisureCoind -l 1 -b
su - mn7 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn7/LeisureCoind -l 1 -b
su - mn8 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn8/LeisureCoind -l 1 -b
su - mn9 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn9/LeisureCoind -l 1 -b
su - mn10 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn10/LeisureCoind -l 1 -b
su - mn11 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn11/LeisureCoind -l 1 -b
su - mn12 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn12/LeisureCoind -l 1 -b
su - mn13 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn13/LeisureCoind -l 1 -b
su - mn14 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn14/LeisureCoind -l 1 -b
su - mn15 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn15/LeisureCoind -l 1 -b
su - mn16 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn16/LeisureCoind -l 1 -b
su - mn17 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn17/LeisureCoind -l 1 -b
su - mn18 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn18/LeisureCoind -l 1 -b
su - mn19 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn19/LeisureCoind -l 1 -b
su - mn20 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn20/LeisureCoind -l 1 -b
su - mn21 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn21/LeisureCoind -l 1 -b
su - mn22 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn22/LeisureCoind -l 1 -b
su - mn23 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn23/LeisureCoind -l 1 -b
su - mn24 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn24/LeisureCoind -l 1 -b
su - mn25 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn25/LeisureCoind -l 1 -b
su - mn26 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn26/LeisureCoind -l 1 -b
su - mn27 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn27/LeisureCoind -l 1 -b
su - mn28 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn28/LeisureCoind -l 1 -b
su - mn29 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn29/LeisureCoind -l 1 -b
su - mn30 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn30/LeisureCoind -l 1 -b
su - mn31 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn31/LeisureCoind -l 1 -b
su - mn32 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn32/LeisureCoind -l 1 -b
su - mn33 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn33/LeisureCoind -l 1 -b
su - mn34 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn34/LeisureCoind -l 1 -b
su - mn35 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn35/LeisureCoind -l 1 -b
su - mn36 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn36/LeisureCoind -l 1 -b
su - mn37 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn37/LeisureCoind -l 1 -b
su - mn38 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn38/LeisureCoind -l 1 -b
su - mn39 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn39/LeisureCoind -l 1 -b
su - mn40 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn40/LeisureCoind -l 1 -b
su - mn41 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn41/LeisureCoind -l 1 -b
su - mn42 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn42/LeisureCoind -l 1 -b
su - mn43 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn43/LeisureCoind -l 1 -b
su - mn44 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn44/LeisureCoind -l 1 -b
su - mn45 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn45/LeisureCoind -l 1 -b
su - mn46 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn46/LeisureCoind -l 1 -b
su - mn47 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn47/LeisureCoind -l 1 -b
su - mn48 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn48/LeisureCoind -l 1 -b
su - mn49 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn49/LeisureCoind -l 1 -b
su - mn50 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn50/LeisureCoind -l 1 -b
su - mn51 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn51/LeisureCoind -l 1 -b
su - mn52 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn52/LeisureCoind -l 1 -b
su - mn53 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn53/LeisureCoind -l 1 -b
su - mn54 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn54/LeisureCoind -l 1 -b
su - mn55 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn55/LeisureCoind -l 1 -b
su - mn56 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn56/LeisureCoind -l 1 -b
su - mn57 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn57/LeisureCoind -l 1 -b
su - mn58 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn58/LeisureCoind -l 1 -b
su - mn59 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn59/LeisureCoind -l 1 -b
su - mn60 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn60/LeisureCoind -l 1 -b
su - mn61 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn61/LeisureCoind -l 1 -b
su - mn62 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn62/LeisureCoind -l 1 -b
su - mn63 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn63/LeisureCoind -l 1 -b
su - mn64 -c './LeisureCoind'
sleep 20
cpulimit -c 2 -P /home/mn64/LeisureCoind -l 1 -b

echo "

*** Your LeisureCoin masternodes are now installed. Please wait for the wallets to be fully synced. ***

*** You can get the current block height with: 

Masternode 1: su - mn1 -c './LeisureCoin-cli getblockcount'

***

*** Configuration lines for your local masternode.conf:

Masternode 1: MN1 $NODEIP:$PORT1 $KEY1 txid index
Masternode 2: MN2 $NODEIP:$PORT2 $KEY2 txid index
Masternode 3: MN3 $NODEIP:$PORT3 $KEY3 txid index
Masternode 4: MN4 $NODEIP:$PORT4 $KEY4 txid index
Masternode 5: MN5 $NODEIP:$PORT5 $KEY5 txid index
Masternode 6: MN6 $NODEIP:$PORT6 $KEY6 txid index
Masternode 7: MN7 $NODEIP:$PORT7 $KEY7 txid index
Masternode 8: MN8 $NODEIP:$PORT8 $KEY8 txid index
Masternode 9: MN9 $NODEIP:$PORT9 $KEY9 txid index
Masternode 10: MN10 $NODEIP:$PORT10 $KEY10 txid index
Masternode 11: MN11 $NODEIP:$PORT11 $KEY11 txid index
Masternode 12: MN12 $NODEIP:$PORT12 $KEY12 txid index
Masternode 13: MN13 $NODEIP:$PORT13 $KEY13 txid index
Masternode 14: MN14 $NODEIP:$PORT14 $KEY14 txid index
Masternode 15: MN15 $NODEIP:$PORT15 $KEY15 txid index
Masternode 16: MN16 $NODEIP:$PORT16 $KEY16 txid index
Masternode 17: MN17 $NODEIP:$PORT17 $KEY17 txid index
Masternode 18: MN18 $NODEIP:$PORT18 $KEY18 txid index
Masternode 19: MN19 $NODEIP:$PORT19 $KEY19 txid index
Masternode 20: MN20 $NODEIP:$PORT20 $KEY20 txid index
Masternode 21: MN21 $NODEIP:$PORT21 $KEY21 txid index
Masternode 22: MN22 $NODEIP:$PORT22 $KEY22 txid index
Masternode 23: MN23 $NODEIP:$PORT23 $KEY23 txid index
Masternode 24: MN24 $NODEIP:$PORT24 $KEY24 txid index
Masternode 25: MN25 $NODEIP:$PORT25 $KEY25 txid index
Masternode 26: MN26 $NODEIP:$PORT26 $KEY26 txid index
Masternode 27: MN27 $NODEIP:$PORT27 $KEY27 txid index
Masternode 28: MN28 $NODEIP:$PORT28 $KEY28 txid index
Masternode 29: MN29 $NODEIP:$PORT29 $KEY29 txid index
Masternode 30: MN30 $NODEIP:$PORT30 $KEY30 txid index
Masternode 31: MN31 $NODEIP:$PORT31 $KEY31 txid index
Masternode 32: MN32 $NODEIP:$PORT32 $KEY32 txid index
Masternode 33: MN33 $NODEIP:$PORT33 $KEY33 txid index
Masternode 34: MN34 $NODEIP:$PORT34 $KEY34 txid index
Masternode 35: MN35 $NODEIP:$PORT35 $KEY35 txid index
Masternode 36: MN36 $NODEIP:$PORT36 $KEY36 txid index
Masternode 37: MN37 $NODEIP:$PORT37 $KEY37 txid index
Masternode 38: MN38 $NODEIP:$PORT38 $KEY38 txid index
Masternode 39: MN39 $NODEIP:$PORT39 $KEY39 txid index
Masternode 40: MN40 $NODEIP:$PORT40 $KEY40 txid index
Masternode 41: MN41 $NODEIP:$PORT41 $KEY41 txid index
Masternode 42: MN42 $NODEIP:$PORT42 $KEY42 txid index
Masternode 43: MN43 $NODEIP:$PORT43 $KEY43 txid index
Masternode 44: MN44 $NODEIP:$PORT44 $KEY44 txid index
Masternode 45: MN45 $NODEIP:$PORT45 $KEY45 txid index
Masternode 46: MN46 $NODEIP:$PORT46 $KEY46 txid index
Masternode 47: MN47 $NODEIP:$PORT47 $KEY47 txid index
Masternode 48: MN48 $NODEIP:$PORT48 $KEY48 txid index
Masternode 49: MN49 $NODEIP:$PORT49 $KEY49 txid index
Masternode 50: MN50 $NODEIP:$PORT50 $KEY50 txid index
Masternode 51: MN51 $NODEIP:$PORT51 $KEY51 txid index
Masternode 52: MN52 $NODEIP:$PORT52 $KEY52 txid index
Masternode 53: MN53 $NODEIP:$PORT53 $KEY53 txid index
Masternode 54: MN54 $NODEIP:$PORT54 $KEY54 txid index
Masternode 55: MN55 $NODEIP:$PORT55 $KEY55 txid index
Masternode 56: MN56 $NODEIP:$PORT56 $KEY56 txid index
Masternode 57: MN57 $NODEIP:$PORT57 $KEY57 txid index
Masternode 58: MN58 $NODEIP:$PORT58 $KEY58 txid index
Masternode 59: MN59 $NODEIP:$PORT59 $KEY59 txid index
Masternode 60: MN60 $NODEIP:$PORT60 $KEY60 txid index
Masternode 61: MN61 $NODEIP:$PORT61 $KEY61 txid index
Masternode 62: MN62 $NODEIP:$PORT62 $KEY62 txid index
Masternode 63: MN63 $NODEIP:$PORT63 $KEY63 txid index
Masternode 64: MN64 $NODEIP:$PORT64 $KEY64 txid index

*** Start your masternode from your wallet and check the status with:

Masternode 1: su - mn1 -c './LeisureCoin-cli masternode status'

***";

exit 1
