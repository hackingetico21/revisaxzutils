#!/usr/bin/bash
#Autor: Kcius

clear

version=`for xz_p in $(type -a xz | awk '{print $NF}' | uniq); do strings "$xz_p" | grep "xz (XZ Utils)" || echo "No se encontro $xz_p";done | sort -u | sed 's/xz (XZ Utils) //'`

echo "La version que tienes de XZ Utils es la $version"
echo ""

if [[ "$version" == "5.6.0" || "$version" == "5.6.1" ]];then
	echo "OJO TIENES UNA VERSION VULNERABLE!"
else
	echo "TE SALVASTE, Esta version NO es vulnerable."
fi

echo ""
echo "Las versiones vulnerables son 5.6.0 y 5.6.1"
echo ""

