   find . -name '*erb' | \
    xargs ruby -e 'ARGV.each { |i| puts "html2haml -r #{i} #{i.sub(/erb$/,"haml")}"}' | \
    bash
    find . -name '*haml' | \
    xargs ruby -e 'ARGV.each { |i| puts "haml2slim #{i} #{i.sub(/haml$/,"slim")}"}' | \
    bash
    find . -type f -name '*erb' -exec rm -f {} \;
    find . -type f -name '*haml' -exec rm -f {} \;