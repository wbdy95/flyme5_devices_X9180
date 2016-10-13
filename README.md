X9180 base 
基于本人自编译CM12.1插桩
flyme 5项目
使用方法
进入flyme项目
cd devices/
git clone https://github.com/wbdy95/flyme5_devices_X9180.git
mv ./flyme5_devices_X9180  ./x9180
cd ../
. build/envsetup.sh
cd devices/x9180
make fullota或者flyme fullota

其他开发者也可以把此项目源码当base_cm使用
本项目持续更新
