scripts=("base_the_ville_isabella"
"base_the_ville_isabella_maria_kard"
"base_the_ville_n5" "base_the_ville_n7" "base_the_ville_n9")

# 
for script in "${scripts[@]}"; do
    #
#    nohup python $script > output.log 2>&1 &
    echo "nohup python reverie_offline.py -o $script -t person_num_$script -s 17280 > person_num_$script.log 2>&1 &"
    nohup python reverie_offline.py -o $script -t person_num_$script -s 17280 > person_num_$script.log 2>&1 &
    wait $!
done
