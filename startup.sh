sass --watch .sass:css |
while true; do
    cd erb
    ruby erb.rb
    cd ..
    sleep 1
done