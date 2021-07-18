def simulacion(arreglo, aumento, indice_inicio, indice_fin)
  arreglo.map! { |x| x.to_f }
  resultado = arreglo[indice_inicio..indice_fin].sum * (1 + aumento)
  resultado.round(2)
end

data = open('ventas_base.db').read.split(',')

primer_semestre = simulacion(data, 0.1, 0, 5)
segundo_semestre = simulacion(data, 0.2, 6, 11)

File.write('resultado.data', "// Estos valores son referenciales\n#{primer_semestre}\n#{segundo_semestre}")
