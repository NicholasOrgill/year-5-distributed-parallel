echo -n "C1-imflip V 1 "
./C1-imflip/Debug/C1-imflip ./C1-imflip/images/townSquare.bmp ./C1-imflip/images/townSquareV.bmp V | egrep -o "[0-9]\.[0-9]+ ms"
echo -n "C1-imflip H 1 "
./C1-imflip/Debug/C1-imflip ./C1-imflip/images/townSquare.bmp ./C1-imflip/images/townSquareH.bmp H | egrep -o "[0-9]\.[0-9]+ ms"

for i in {1..24}
do
    echo -n "C2-imgflipP V $i "
    ./C2-imflipP/Debug/C2-imflipP ./C2-imflipP/images/townSquare.bmp ./C2-imflipP/images/townSquareV.bmp V $i | egrep -o "[0-9]\.[0-9]+ ms"
    echo -n "C2-imgflipP H $i "
    ./C2-imflipP/Debug/C2-imflipP ./C2-imflipP/images/townSquare.bmp ./C2-imflipP/images/townSquareH.bmp H $i | egrep -o "[0-9]\.[0-9]+ ms"
done

for i in {1..24}
do
    echo -n "C3-imgflipPM V $i "
	./C3-imflipPM/Debug/C3-imflipPM ./C3-imflipPM/images/townSquare.bmp ./C3-imflipPM/images/townSquareV.bmp V $i | egrep -o "[0-9]\.[0-9]+ ms"
	echo -n "C3-imgflipPM H $i "
	./C3-imflipPM/Debug/C3-imflipPM ./C3-imflipPM/images/townSquare.bmp ./C3-imflipPM/images/townSquareH.bmp H $i | egrep -o "[0-9]\.[0-9]+ ms"
	echo -n "C3-imgflipPM W $i "
	./C3-imflipPM/Debug/C3-imflipPM ./C3-imflipPM/images/townSquare.bmp ./C3-imflipPM/images/townSquareW.bmp W $i | egrep -o "[0-9]\.[0-9]+ ms"
	echo -n "C3-imgflipPM I $i "
	./C3-imflipPM/Debug/C3-imflipPM ./C3-imflipPM/images/townSquare.bmp ./C3-imflipPM/images/townSquareI.bmp I $i | egrep -o "[0-9]\.[0-9]+ ms"
done
