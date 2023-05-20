#!/bin/bash

banner()
{
declare -A characters=(
    [A]=" AAA ,A   A,AAAAA,A   A,A   A"
    [B]="BBBB ,B   B,BBBB ,B   B,BBBB "
    [C]=" CCC ,C   C,C    ,C   C, CCC "
    [D]="DDD  ,D  D ,D   D,D  D ,DDD  "
    [E]="EEEEE,E    ,EEE  ,E    ,EEEEE"
    [F]="FFFFF,F    ,FFF  ,F    ,F    "
    [G]=" GGGG,G    ,G  GG,G   G, GGG "
    [H]="H   H,H   H,HHHHH,H   H,H   H"
    [I]="IIIII,  I  ,  I  ,  I  ,IIIII"
    [J]="  JJJ,   J ,   J ,J  J , JJ  "
    [K]="K   K,K  K ,KK   ,K  K ,K   K"
    [L]="L    ,L    ,L    ,L    ,LLLLL"
    [M]="M   M,MM MM,M M M,M   M,M   M"
    [N]="N   N,NN  N,N N N,N  NN,N   N"
    [O]=" OOO ,O   O,O   O,O   O, OOO "
    [P]="PPPP ,P   P,PPPP ,P    ,P    "
    [Q]=" QQQ ,Q   Q,Q   Q,Q  Q , QQ Q"
    [R]="RRRR ,R   R,RRRR ,R  R ,R   R"
    [S]=" SSSS,S    , SSS ,    S,SSSS "
    [T]="TTTTT,  T  ,  T  ,  T  ,  T  "
    [U]="U   U,U   U,U   U,U   U, UUU "
    [V]="V   V,V   V,V   V, V V ,  V  "
    [W]="W   W,W   W,W W W,W W W, W W "
    [X]="X   X, X X ,  X  , X X ,X   X"
    [Y]="Y   Y, Y Y ,  Y  ,  Y  ,  Y  "
    [Z]="ZZZZZ,    Z,   Z ,  Z  ,ZZZZZ"
    [0]=" OOO ,O   O,O O O,O   O, OOO "
    [1]="  1  , 11  ,  1  ,  1  ,11111"
    [2]=" 222 ,2   2,   2 ,  2  ,22222"
    [3]="3333 ,    3, 333 ,    3,3333 "
    [4]="4   4,4   4,44444,    4,    4"
    [5]="55555,5    ,5555 ,    5,5555 "
    [6]="  666, 6   ,6666 ,6   6, 666 "
    [7]="77777,    7,   7 ,  7  , 7   "
    [8]=" 888 ,8   8, 888 ,8   8, 888 "
    [9]=" 999 ,9   9, 9999,    9, 999 "
)

input=$*
inp_array=($(echo $input))

for ((l=0; l<${#inp_array[@]}; l++))
do
	text=${inp_array[l]}
        length=${#text}
        for ((j=0; j<length; j++))
        do
		char=${text:$j:1}
		if ! [[ $char =~  ^[a-zA-Z0-9]+$ ]]
		then
			echo "ERROR[banner]: Only alphanumeric characters allowd."
			exit 1
		fi
	done
done
echo ""
echo ""

for ((l=0; l<${#inp_array[@]}; l++))
do
	text=${inp_array[l]}
	length=${#text}
	for ((i=0; i<5; i++))
	do
    		for ((j=0; j<length; j++))
    		do
			char=${text:$j:1}
			newc=$(echo $char | tr "[[:lower:]]" "[[:upper:]]" )
        		IFS="," read -a val_arry <<< "${characters[$newc]}"
        		#printf "${val_arry[i]} "| sed "s/./& /g" 
			printf "${val_arry[i]} "
    		done
    		echo ""
	done
	echo ""
	echo ""

done
}
