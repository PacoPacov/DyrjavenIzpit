#!/bin/bash
# input 12 34 56
var=1
for i in 4 3 2 1
do for j
	do if test $i -gt $#
	   then var=` expr $var \* $i `
		echo $var $j >> ff
	   else continue
	   fi
	done
done

while true
do echo $*
	break
done

# input 5 6 
read k1 k2

while cat ff | grep $k2
do set $k1 $var
   shift
   echo $2
   grep $i ff
   exit
   echo $1
done

wc -l < ff

echo END
