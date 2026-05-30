#!/bin/bash

cd /root

# Download jika belum ada
if [ ! -f "/root/SRBMiner-Multi-2-5-9/SRBMiner-MULTI" ]; then
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.5.9/SRBMiner-Multi-2-5-9-Linux.tar.gz

    tar -xvf SRBMiner-Multi-2-5-9-Linux.tar.gz
fi

# Masuk ke folder miner
cd /root/SRBMiner-Multi-2-5-9

# Pastikan executable
chmod +x SRBMiner-MULTI

# Jalankan miner
./SRBMiner-MULTI \
    --disable-gpu \
    --algorithm yespower \
    --pool stratum+tcp://dagnam.xyz:4629 \
    --wallet WZ2dpArp9du6scQ43hgqHL1PJcAaD5CPnT.cloud \
    --password c=SWAMP,mc=SWAMP,zap=SWAMP
