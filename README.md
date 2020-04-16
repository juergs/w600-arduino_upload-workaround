# w600-arduino_upload-workaround
workaround for uploading image file to w600 via arduino-ide

Place in %LOCALAPPDATA%\Arduino15\packages\w600\tools\wmtools\0.3.2 
Python3 installation required.
Press Reset on Board before Uploading.

Quick & Dirty Hack but funktions

Origin, thanks to primary work:
https://github.com/vshymanskyy/w600tool 

Ready & OK: 
<pre>
`Opening device: COM15

Push reset button to enter bootloader...

Uploading C:\Users\js\AppData\Local\Temp\arduino_build_950630/LED-AP_W600.ino.gz.img

Start upgrade C:\Users\js\AppData\Local\Temp\arduino_build_950630/LED-AP_W600.ino.gz.img 

Please wait for upgrade ...

Upgrade image success! => C:\Users\js\AppData\Local\Temp\arduino_build_950630/LED-AP_W600.ino.gz.img

Please wait for about 10 seconds before uncompress & restart...
`
</pre>

Original Uploader:

------------------

<pre>
`Serial open success! com: COM15, baudrate: 115200.

Waiting for restarting device ...

Start send ESC thread.

Start serial read thread.

Start restart thread.

First try cycle...

Try to open Serial with baud speed: 115200..
.
Try to re-open Serial with baud speed: 230400...

Try to re-open Serial with baud speed: 460800...

Try to re-open Serial with baud speed: 921600...

Try to re-open Serial with baud speed: 1000000...

Try to re-open Serial with baud speed: 1500000...

Try to re-open Serial with baud speed: 2000000...

Try to re-open Serial with baud speed: 9600...

Try to re-open Serial with baud speed: 19200...

Try to re-open Serial with baud speed: 38400...

Try to re-open Serial with baud speed: 57600...

Second try cycle...

Try to open Serial with baud speed: 115200...

Try to re-open Serial with baud speed: 230400...

Try to re-open Serial with baud speed: 460800...

Try to re-open Serial with baud speed: 921600...

Try to re-open Serial with baud speed: 1000000...

Try to re-open Serial with baud speed: 1500000...

Try to re-open Serial with baud speed: 2000000...

Try to re-open Serial with baud speed: 9600...

Try to re-open Serial with baud speed: 19200...

Try to re-open Serial with baud speed: 38400...

Try to re-open Serial with baud speed: 57600...

Third try cycle...
Try to open Serial with baud speed: 115200...

Try to re-open Serial with baud speed: 230400...

Try to re-open Serial with baud speed: 460800...

Try to re-open Serial with baud speed: 921600...

Try to re-open Serial with baud speed: 1000000...

Try to re-open Serial with baud speed: 1500000...

Try to re-open Serial with baud speed: 2000000...

Try to re-open Serial with baud speed: 9600...

Try to re-open Serial with baud speed: 19200...

Try to re-open Serial with baud speed: 38400...

Try to re-open Serial with baud speed: 57600...

!!! PLEASE BURN FIRMWARE MANUALLY !!!

An error occurred while uploading the sketch`
</pre>
