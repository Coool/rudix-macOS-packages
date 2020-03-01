all: sizes checksum manifest

sizes:
	LANG=C du -sh *.pkg > SIZES.txt

checksum:
	md5           *.pkg > MD5.txt
	shasum -a 1   *.pkg > SHA1.txt
	shasum -a 256 *.pkg > SHA256.txt

manifest:
	ls -1 *.pkg > MANIFEST.txt
