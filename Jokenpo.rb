# Jogo_Jokenpo

def calcula_vencedor (sua_escolha, pc_escolha)
    resultado = (sua_escolha - pc_escolha % 3)

    if resultado == 1
        'Você ganhou'
    elsif resultado == 2
        'PC Ganhou!'
    else
        'Deu empate!'
end

    opcoes = {
        1 => 'Pedra',
        2 => 'Papel',
        3 => 'Tesoura'
    }

    novo_jogo = 's'

    while novo_jogo == 's'
    
        opcoes.each do |k,v|
        puts "#{k} - #{v}"
        end

        print 'Escolha uma opção acima: '
        sua_escolha = gets.to_i

        while opcoes [sua_escolha].nil?
            print 'Opção inválida! Escolha novamente:'
            sua_escolha = gets.to_i
        end
    
        pc_escolha = Random.rand (3) + 1

        puts "\nVocê escolheu #{opcoes[sua_escolha]}"
        puts "O PC escolheu #{opcoes[pc_escolha]}\n\n"

        print calcula_vencedor(sua_escolha, pc_escolha)

        print "\n\nDeseja jogar novamente? (s/n): "
        novo_jogo = gets.chom
    end

puts "Obrigada por jogar!"
end
