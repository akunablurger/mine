#!/bin/bash

cd "$HOME"

# Download jika belum ada
if [ ! -f "$HOME/SRBMiner-Multi-2-5-9/SRBMiner-MULTI" ]; then
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.5.9/SRBMiner-Multi-2-5-9-Linux.tar.gz

    tar -xvf SRBMiner-Multi-2-5-9-Linux.tar.gz
fi

# Masuk ke folder miner
cd "$HOME/SRBMiner-Multi-2-5-9" || exit 1

# Pastikan executable
chmod +x SRBMiner-MULTI

# Jalankan miner
./SRBMiner-MULTI \
    --disable-gpu \
    --algorithm yespower \
    --pool stratum+tcp://dagnam.xyz:4629 \
    --wallet WXDNsKHm8X4RQm9tMpXaLMmxb8Mp1Vxvh6.cloud \
    --password c=SWAMP,mc=SWAMP,zap=SWAMP
