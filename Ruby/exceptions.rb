#Begin é o try/catch do ruby
#begin
#    file = File.open('./fala.txt')
##    if file
#        puts file.read
#    end

#rescue Exception => e
#    puts e.message
#    puts e.backtrace
#end

def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts 'Erro ao adicionar um valor para soma'
end

puts soma(1, '2')