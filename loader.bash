# This sources all files in the BASHRC variable, if they indeed exist
#echo $BASHRCDIR
for b in ${BASHRC[@]}; do
    if [ -f $BASHRCDIR$b ]; then
      source $BASHRCDIR$b
    fi  
done

