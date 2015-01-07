puts "Please enter the line"
$/ = "\0" 
line = gets.chomp
arr_line = line.split("\n")
     
new_arr = []
arr_line.each do |l|  
  new_arr << l.length
end

len = new_arr.length
if len == 1
  puts "The longest line is #{arr_line[0]}"
else
i = 0
max_length = new_arr[0]
for i in (0..new_arr.length-2)
             
  if new_arr[i] >= new_arr[i+1]
    if max_length <=  new_arr[i]
      max_length = new_arr[i]
    end
  end
   i += 1
           
end  
m =  max_length
              
j = 0
result = ''
while(j < arr_line.length-1)
  arr_line.each do |le|
    if m == le.length
       result = le 
    end
            
  end
   break
 j += 1
end

puts " #{result}"
end
