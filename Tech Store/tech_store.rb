require 'date'

# Desafio: Implementar o método 'calculate_total_price' da classe 'Order',
# que deve calcular o preço total de um pedido com base nos itens e quantidades.

# Contexto: A loja online "TechStore" vende eletrônicos e precisa de uma funcionalidade
# para calcular o preço total de um pedido. Cada pedido é composto por vários itens,
# onde cada item possui um nome e um preço unitário. O método 'calculate_total_price'
# deve multiplicar o preço unitário de cada item pela quantidade desejada e retornar o
# preço total do pedido.

class Order
  Item = Struct.new(:name, :unit_price, :quantity)

  def initialize
    @items = []
  end

  def add_item(name, unit_price, quantity)
    item = Item.new(name, unit_price, quantity)
    @items << item
  end

  def calculate_total_price
    total_price = 0

    # Implemente a lógica de cálculo do preço total do pedido aqui
    # Dica: Itere sobre os itens e acumule o preço total multiplicando o preço unitário pela quantidade

    total_price
  end
end

# Testes

RSpec.describe Order do
  describe '#calculate_total_price' do
    let(:order) { Order.new }

    before do
      order.add_item('Laptop', 1500, 2)
      order.add_item('Mouse', 50, 3)
    end

    it 'calcula o preço total do pedido' do
      total_price = order.calculate_total_price
      expect(total_price).to eq(3150)
    end

    it 'retorna 0 para um pedido vazio' do
      empty_order = Order.new
      total_price = empty_order.calculate_total_price
      expect(total_price).to eq(0)
    end

    it 'calcula o preço corretamente para um pedido com apenas um item' do
      single_item_order = Order.new
      single_item_order.add_item('Teclado', 100, 1)
      total_price = single_item_order.calculate_total_price
      expect(total_price).to eq(100)
    end

    it 'calcula o preço corretamente para um pedido com itens de preços decimais' do
      order_with_decimal_prices = Order.new
      order_with_decimal_prices.add_item('Fone de Ouvido', 49.99, 2)
      order_with_decimal_prices.add_item('Carregador', 29.99, 1)
      total_price = order_with_decimal_prices.calculate_total_price
      expect(total_price).to eq(129.97)
    end

    it 'calcula o preço corretamente para um pedido com grandes quantidades' do
      large_quantity_order = Order.new
      large_quantity_order.add_item('Caneta', 1.5, 100)
      total_price = large_quantity_order.calculate_total_price
      expect(total_price).to eq(150)
    end

    it 'calcula o preço corretamente para um pedido com desconto aplicado' do
      discount_order = Order.new
      discount_order.add_item('Camiseta', 20, 3)
      total_price = discount_order.calculate_total_price
      expect(total_price).to eq(60)
    end

    it 'calcula o preço corretamente para um pedido com itens de preço zero' do
      zero_price_order = Order.new
      zero_price_order.add_item('Bracelete', 0, 5)
      total_price = zero_price_order.calculate_total_price
      expect(total_price).to eq(0)
    end

    it 'calcula o preço corretamente para um pedido com itens de quantidade zero' do
      zero_quantity_order = Order.new
      zero_quantity_order.add_item('Óculos', 50, 0)
      total_price = zero_quantity_order.calculate_total_price
      expect(total_price).to eq(0)
    end

    it 'calcula o preço corretamente para um pedido com itens de preço e quantidade negativos' do
      negative_values_order = Order.new
      negative_values_order.add_item('Chave de Fenda', -5, -2)
      total_price = negative_values_order.calculate_total_price
      expect(total_price).to eq(0)
    end

    it 'calcula o preço corretamente para um pedido com itens de preço e quantidade string' do
      string_values_order = Order.new
      string_values_order.add_item('Cabo USB', '10', '3')
      total_price = string_values_order.calculate_total_price
      expect(total_price).to eq(30)
    end

    it 'calcula o preço corretamente para um pedido com itens de preço e quantidade nil' do
      nil_values_order = Order.new
      nil_values_order.add_item('Carregador Portátil', nil, nil)
      total_price = nil_values_order.calculate_total_price
      expect(total_price).to eq(0)
    end
  end
end
