data = open('notas.data').readlines
data.map! { |i| i.split(',') }
data.length.times do |i|
  data[i][1..-1].map! { |i| i.to_i }
end

def nota_mas_alta(notas)
  mejores_notas = []
  notas.length.times do |i|
    mejores_notas.push notas[i][1..-1].max.to_i
  end
  mejores_notas
end

print nota_mas_alta(data)
