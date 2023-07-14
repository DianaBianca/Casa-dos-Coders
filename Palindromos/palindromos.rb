# Desafio: Implementar o método 'is_palindrome?' da classe 'StringUtils',
# que deve retornar true se a string for um palíndromo e false caso contrário.

# Implemente a solução no método 'is_palindrome?' abaixo:

class StringUtils
  def self.is_palindrome?(string)
    # Sua implementação aqui
  end
end

# Testes

RSpec.describe StringUtils do
  describe '.is_palindrome?' do
    context 'quando a string é um palíndromo' do
      it 'retorna true' do
        expect(StringUtils.is_palindrome?('arara')).to be true
        expect(StringUtils.is_palindrome?('radar')).to be true
        expect(StringUtils.is_palindrome?('asa')).to be true
      end
    end

    context 'quando a string não é um palíndromo' do
      it 'retorna false' do
        expect(StringUtils.is_palindrome?('carro')).to be false
        expect(StringUtils.is_palindrome?('casa')).to be false
        expect(StringUtils.is_palindrome?('abracadabra')).to be false
      end
    end

    context 'quando a string é vazia' do
      it 'retorna true' do
        expect(StringUtils.is_palindrome?('')).to be true
      end
    end
  end
end

