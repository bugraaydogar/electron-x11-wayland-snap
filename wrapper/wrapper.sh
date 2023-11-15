#! /bin/sh

if grep -q "Pi 4" /proc/cpuinfo; then
  EXTRAOPTS="--disable-gpu"
fi

exec $SNAP/electron-helloworld/electron-quick-start \
	--disable-dev-shm-usage \
	--no-sandbox $EXTRAOPTS