NAME=$1
LASTNAME=$2
SHOW=$3
if $SHOW; then
	echo "Hello, $NAME $LASTNAME"
else 
	echo "Boolean Parameter is false"
fi
