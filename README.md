# OpenWrtAI
a simple ai on openwrt platform
 instalation imformation can be found here 
 https://forum.openwrt.org/t/openwrtai-with-internet-radio-and-local-media/
 
 it can be a  very simple private AI  with manual trigger for listening ( i use a zigbee switch  via domoticz)
  it can be install on multiple platforms  thought it was designed specifically for openwrt and it particular pacularities
 it has support for multiple room  via 5.1 or 7.1  audio devices each port can be audio output for seperate rooms  . you can have a zigbee switch in each room and  audigate switch that point the mic to that specific room for play back in that room or the entire house 
  
  it written in bash and is extremely quick and responsive  especially if using online speech reconignition and flite ( verus gtts)
   if using on non openwrt device  just edit the chroot  section to point to a local version of  mplayer, vlc and flite
   it also has fussy logic capablity, specifically  used on the ebook section- as long as you are realitively  close  with your book title  or unuciation  it should bring up the correct  book
 for basic install  with out the more complex options  you just need to install   SpeechRecognition, gtts and levenshtein
 and use mpg123 compatable radio stream
  ```
  pip install SpeechRecognition
  ```
  
  for open wrt follow this  then install SpeechRecognition
  ```
  opkg install git
opkg install alsa-utils
opkg install alsa-lib
opkg install portaudio
opkg install ar
opkg install python3-dev
# Make a working directory
mkdir /opt/tmp/
cd /opt/tmp
# Fetch PyAudio source
git clone https://people.csail.mit.edu/hubert/git/pyaudio.git
# Fetch portaudio.h (required for the build)
cd /opt/tmp/pyaudio/src
wget https://raw.githubusercontent.com/EddieRingle/portaudio/master/include/portaudio.h
# build away!
cd /opt/tmp/pyaudio
python setup.py build
python setup.py install
# done

```
compile flac
```
opkg install gcc make 
wget https://github.com/xiph/flac/releases/download/1.3.4/flac-1.3.4.tar.xz -O flac.tar.xz
tar -xvf fac.tar.xzgit clone https://github.com/rbm78bln/levenshtein.git
cd flac
chmod +x configure
./configure
make 
make install  # but it installs to /usr/local/bin  just copy flac to /usr/bin afterwards  or manually do it from the build dir
```
install gtts 
```
# pip install gTTS
# opkg install mpg123
```
and install fuzzy logic
```
git clone https://github.com/rbm78bln/levenshtein.git
make 
cp levenshtein exec to /bin
```
and you are off and running 

openwrtAI is the main executable 
