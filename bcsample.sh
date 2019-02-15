#bcsample
if [ $# != 1 ]
   then
   echo "A number argument is required"
   exit
fi

bc <<END-OF-INPUT
scale=6
/* first we define the function */
define myfunc(x){
   return(sqrt(x));
}

/* then use the function to do the calculation*/
x=$1
"Processing ";x;" sqrt is ";myfunc(x)
quit
END-OF-INPUT

echo "(to 6 decimal places)"
