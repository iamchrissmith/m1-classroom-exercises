# ruby <filename.rb> quiet_quotes.txt loud_quotes.txt

args = ARGV
source_file_name = ARGV[0]
dest_file_name = ARGV[1]

source_file = File.open(source_file_name,'r')
dest_file = File.open(dest_file_name,'w')

contents = source_file.read
contents = contents.upcase

dest_file.write(contents)

source_file.close
dest_file.close
