#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9209856 e3ba406b7a211d8f9aa8da75b74def1bf0dc3f05 6621184 a45affa38b676322698b49c18dbe18ef61a3bdbd
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9209856:e3ba406b7a211d8f9aa8da75b74def1bf0dc3f05; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6621184:a45affa38b676322698b49c18dbe18ef61a3bdbd EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery e3ba406b7a211d8f9aa8da75b74def1bf0dc3f05 9209856 a45affa38b676322698b49c18dbe18ef61a3bdbd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
