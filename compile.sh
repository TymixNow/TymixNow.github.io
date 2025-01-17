for dir in haml/*.haml;
do
    dir=${dir/#"haml/"/""}
    dir=${dir/%".haml"/""}
    ruby haml/haml.rb $dir
    echo -e "\e[1;35m Compiled $dir.haml to $dir.html \e[0m"
done 
sass --watch .sass:css &
pid=$!
sleep 0.1
kill ${pid}