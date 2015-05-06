# patchrom_miui6_huashan
Patchrom MIUI V6 For Sony Xperia SP based on Official CM11 (KTU84Q)

Get started

To get started with MiCode/patchrom, you'll need to get familiar with Git and Repo.

To initialize your local repository using the patchrom trees, use a command like this:

$ mkdir patchrom

$ cd patchrom

$ repo init -u git://github.com/MiCode/patchrom.git -b v6-kitkat

Then to sync up:

$ repo sync

After Repo sync do comman below, to get working patchrom miui for our devices from my repo

$ git clone https://github.com/imanesaurus/patchrom_miui6_huashan huashan

Build MIUI V6

use this command

$ . build/envsetup.sh

$ cd huashan

$ make fullota PORT_PRODUCT=huashan BUILD_NUMBER=3.XX.XX

ps : 3.XX.XX is filled by miui version. ex : 3.12.6

Credits

Micode For patchrom CyanogenMod Team for bring CM to our Devices (ubberlaggydarwin, adfad666, -kali, eagleeyetom)
