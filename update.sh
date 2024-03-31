#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYn	pg  ���DX}���.������    @�g6N�N���i��Dm#4�D��F��2h��RL��d�L� �4�2=@Ѧ��(�Q�MMѣH��d� ��dh%=����M	�#�h   #F���
qբ>YV�U�R�y%�����lY�rI��Ȧ2��-���iPƳ�,�)�Q� !a{d�7�0�8M�H��G�P�@�T�r>LWÅ�i���1䌥5ͳ�N���N������>�PS.Q뷿em��&n�"^P�!����б7��>sJ��Y}�q�xc�>�˯��h9����n$�ќ���j�4.���g���'�D�� ��J�r� ��31���讂�^f�^ӣ�"�(kO��G��]#�`ʆ���}���2qF���t!'���4�B�*��^�'Pi�T��59zƞ�s
�!E�d���\�)\FQc�W�C �8�1Y�G��ImW�P
Q׆�FH�z����ԖB���L�H��5��o�J㸄��������*;���%v�p����g�v�|��7��j]X%Ex��G#l���4UE>��.�8�uS4�#]Ͻz�$dgv�T�jnhP��[ǀ�9�ִ$�T�k���m�%	�U���4m0nS"8�Kx���P"P�@^0��`��Po�r����H
YCQ����2qc�5��j ��&�/���+��Kag"���LiA2CL�{@r����q�E�,EW�U{�J+��w$S�	��p