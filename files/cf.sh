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
BZh91AY&SY�m� 8_�B�����������PD@ `��ѭ4�   	SAS�442hi�2 44i�S# @8i��CCC#@2 ��h� ���M4�hhhdh@M  0���i�$�d�2hi�4h1 44 M p4�M���F�d��4ѐ 	��&�&�F�51�"z��l�T{L�➛MO���S���|m|��V+䌖\kB�N	p�4b(����[�t���t�	IQTC�1:����D�Z��<a�2=�C��<P ���� 9��n[�
q����?�-d�i)#+jw����tS�9�����H���$~����Y@F�ھ��z^*����*$��TG�)��9�߇*��y��,(j! ��H�ӈX����G~ ��X�~�k��PbFDNf �700\@3<��D0="�'��Ӆ���*%1f ��0)���C3���	HR	�V��dФ��	�7�����B�A:��壅�o�#`(�L����*>Y���E�a����������-lzl��"~��Wo�8i��m�0�?\�lP�@�ɰ�{�z�:����p(ن'��CJ ���9�%I���D�E�-� �[(�Y#uɄ�R��O}&�	{U���ݓ��.��R��K���!�է+���?66=��q[��B�c����.����]��ʫԘ@�8���T�18������ ����ߠ�6H4��64�@f��i����Θ1U/X)ږL2���}]B`(ږ��#=�2D/qd�� y`_�Lf�su�0A��Q ����4!�R�n��AhoM���>MF�ˌ"��wm�G��^J���AX7 �����rcv� j��b_U��W�q�:j2����9�Jl�o5��:�M��ji�s���#\�!A����ߨ
�,B�@���H^VTPp%?�7�<�F��Ԡ�(#�Q($�I��L�D<5���eu�P�����=��Tyb-�� j�=~K�[�b���T�@�/?�{�&?��g�=��G�O��8�͈K�}�o����Z�}�"��|@p^H�#J�JK�#7'JI�`�4m��W�"߾(�@�,1�:�E[V�Qž<7�0��� �T��N��ؐm2耶��c��/����J�8sFX������!MG�S:a$�K��r� �R�ð~'��� t��܁&� �8�B'�lH4v�K���٤�)K�np��$J�q�p/��բ�M!��)�ۿ���X,vS6:�Ε�G���B�.��ʯ 5�3�08Qf�c������~�8|v� o�n��zOf�Θ�8�V3t?�r d�m�4@��8=:�Iu�g;R<C�e�	�������� �v2�=� (>;�@��� (�jm�b�n<!�~�x���,Ѱ�b�7�l�"¢l��
q��@$}�!�A�	�%<��݄�ka�EZ�M>( ���sq�D����C5����h�c�v@�Q�`�8-x݀C;��o����#�"8ǆ���c�x�9��v�vj�1Lf� ���r]�(�}S�a~�����)D����<����0���p<<���J��g��������`qѐprx�$D|l�)w���7�f�	r/�"4��L����"�(H@6��