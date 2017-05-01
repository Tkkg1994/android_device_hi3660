## TWRP device tree for Huawei Mate 9 (hi3660)

```
repo init -u https://github.com/omnirom/android.git -b android-7.1
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_hi3660-eng && mka recoveryimage
```
