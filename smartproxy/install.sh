#!/bin/sh
python setup.py install --optimize=1 --root=$RPM_BUILD_ROOT --record=INSTALLED_FILES
CONFIGFILES="\
%config(noreplace) /etc/lounge/smartproxy.xml
%config(noreplace) /etc/lounge/smartproxy.tac"
echo "$CONFIGFILES" | cat INSTALLED_FILES - > INSTALLED_FILES.new
mv INSTALLED_FILES.new INSTALLED_FILES
