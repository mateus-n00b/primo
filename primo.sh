
[ $# -ne 1 ] && echo "Usage: $0 <number>" && exit 2
dvs=0
for ((x=1;x<=$1;x++))
do
  [ $(bc <<< $1%$x) -eq 0 ] && let dvs++
done

if [ $dvs -gt 2 ]  
then
   echo "Nao e primo!"
elif [ $dvs -eq 2 ]
then 
   echo "Eh primo!"
fi
