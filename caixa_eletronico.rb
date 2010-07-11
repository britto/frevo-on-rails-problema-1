# encoding: utf-8

NOTAS = [2,5,10,20,50,100]

def valor_pode_ser_pago?(valor)
  true
end

def dividir_notas(valor)
  qtds = {}
  NOTAS.each { |n| qtds[n] = 0 }
  qtds
end

def imprimir_resultado(valor, qtds)
  puts 'Para R$ %.2f:' % valor
  qtds.each do |nota,qtd|
    puts '  %2d * R$ %5.2f' % [qtd, nota]
  end
end

# --------------

valor = ARGV.first

if valor
  if valor_pode_ser_pago?(valor)
    qtds = dividir_notas(valor)
    imprimir_resultado(valor, qtds)
  else
    puts 'Não é possível pagar R$ %.2f.' % valor
  end
else
  puts 'Forneça um valor.'
end

