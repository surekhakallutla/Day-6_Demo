function myFunction() {
	c=$(( $1 + $2 ));
	echo $c;
}

result=$( myFunction $((RANDOM%100)) $((RANDOM%100)) );
echo $result;