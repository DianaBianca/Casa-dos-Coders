# Desafio: Implementar o método 'calculate_total_price' da classe 'Cart',
# que deve calcular o preço total dos itens adicionados ao carrinho.

# Contexto: A classe 'Cart' representa um carrinho de compras de uma loja online.
# Cada item no carrinho possui um nome e um preço. O método 'calculate_total_price'
# deve somar o preço de todos os itens no carrinho e retornar o valor total.

# Implemente a solução no método 'calculate_total_price' abaixo:

class Cart
  def initialize
    @items = []
  end

  def add_item(name, price)
    @items << { name: name, price: price }
  end

  def calculate_total_price
    # Sua implementação aqui
  end
end

# Testes

RSpec.describe Cart do
  describe '#calculate_total_price' do
    let(:cart) { Cart.new }

    context 'quando o carrinho está vazio' do
      it 'retorna 0 como preço total' do
        expect(cart.calculate_total_price).to eq(0)
      end
    end

    context 'quando o carrinho tem um único item' do
      it 'retorna o preço desse item como preço total' do
        cart.add_item('Camiseta', 50)
        expect(cart.calculate_total_price).to eq(50)
      end
    end

    context 'quando o carrinho tem múltiplos itens' do
      it 'retorna a soma dos preços de todos os itens' do
        cart.add_item('Camiseta', 50)
        cart.add_item('Calça', 80)
        cart.add_item('Tênis', 120)
        expect(cart.calculate_total_price).to eq(250)
      end
    end
  end
end

