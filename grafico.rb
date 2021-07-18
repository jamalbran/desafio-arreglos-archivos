def chart(arreglo)
  arreglo.each { |x| puts "|#{'**' * x}" }
  puts ">#{'--' * arreglo.max}"
  arreglo.max.times { |x| print " #{x + 1}" }
end

chart([5, 3, 2, 5, 10])
puts ''
