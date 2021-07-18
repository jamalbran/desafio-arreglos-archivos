data = open('notas.data').readlines
data.map! { |i| i.split(',') }
data.length.times do |i|
  data[i][1..-1].map! { |i| i.to_i }
end

def nota_mas_alta(notas)
  puts notas[1..-1].max
end

nota_mas_alta(data[0])
nota_mas_alta(data[1])
