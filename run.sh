echo Starting
echo -n "C1-imgflip V 1 "
./C1-imflip images/townSquare.bmp images/townSquarev.bmp V | egrep -o "[0-9]\.[0-9]+ ms"
echo -n "C1-imgflip H 1 "
./C1-imflip images/townSquare.bmp images/townSquarev.bmp H | egrep -o "[0-9]\.[0-9]+ ms"


for i in {1..24}
do
	echo -n "C2-imgflipP V $i "
	./C2-imflipP images/townSquare.bmp images/townSquarev.bmp V $i | egrep -o "[0-9]\.[0-9]+ ms"
	echo -n "C2-imgflipP H $i "
	./C2-imflipP images/townSquare.bmp images/townSquarev.bmp H $i | egrep -o "[0-9]\.[0-9]+ ms"
done


for i in {1..24}
do
	echo -n "C3-imgflipPM V $i "
	./C3-imflipPM images/townSquare.bmp images/townSquarev.bmp V $i | egrep -o "[0-9]\.[0-9]+ ms"
	echo -n "C3-imgflipPM H $i "
	./C3-imflipPM images/townSquare.bmp images/townSquarev.bmp H $i | egrep -o "[0-9]\.[0-9]+ ms"
	echo -n "C3-imgflipPM W $i "
	./C3-imflipPM images/townSquare.bmp images/townSquarev.bmp W $i | egrep -o "[0-9]\.[0-9]+ ms"
	echo -n "C3-imgflipPM I $i "
	./C3-imflipPM images/townSquare.bmp images/townSquarev.bmp I $i | egrep -o "[0-9]\.[0-9]+ ms"
done

cat /proc/cpuinfo
