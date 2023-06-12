# Desafio: Implementar o método 'count_kittens' da classe 'CatUtils',
# que deve contar o número de gatinhos em uma lista de gatos.
# Quando finalizar o desenvolvimento do método, adicione mais cenários de testes 

# Implemente a solução no método 'count_kittens' abaixo:

class CatUtils
  def self.count_kittens(cats)
    # Sua implementação aqui
  end
end
  
  # Testes
  
RSpec.describe CatUtils do
  describe '.count_kittens' do
    context 'quando a lista de gatos contém apenas gatinhos' do
      it 'retorna o número correto de gatinhos' do
        cats = [
          { name: 'Felix', age: 0.5, breed: 'Siamese' },
          { name: 'Whiskers', age: 0.8, breed: 'Persian' },
          { name: 'Mittens', age: 0.2, breed: 'Maine Coon' }
        ]
        expect(CatUtils.count_kittens(cats)).to eq(3)
      end
    end

    context 'quando a lista de gatos contém gatinhos e gatos adultos' do
      it 'retorna o número correto de gatinhos' do
        cats = [
          { name: 'Felix', age: 0.5, breed: 'Siamese' },
          { name: 'Whiskers', age: 0.8, breed: 'Persian' },
          { name: 'Mittens', age: 0.2, breed: 'Maine Coon' },
          { name: 'Garfield', age: 4, breed: 'Tabby' },
          { name: 'Simba', age: 1.5, breed: 'Bengal' }
        ]
        expect(CatUtils.count_kittens(cats)).to eq(3)
      end
    end

    context 'quando a lista de gatos contém apenas gatos adultos' do
      it 'retorna 0, pois não há gatinhos na lista' do
        cats = [
          { name: 'Garfield', age: 4, breed: 'Tabby' },
          { name: 'Simba', age: 1.5, breed: 'Bengal' },
          { name: 'Lucy', age: 2, breed: 'Ragdoll' }
        ]
        expect(CatUtils.count_kittens(cats)).to eq(0)
      end
    end

    context 'quando a lista de gatos está vazia' do
      it 'retorna 0, pois não há gatos na lista' do
        cats = []
        expect(CatUtils.count_kittens(cats)).to eq(0)
      end
    end

    # Adicione mais 7s contextos e testes aqui...
  end
end
