# Desafio: Implementar o método 'calculate_discounted_price' da classe 'Product',
# que deve calcular o preço com desconto de um produto.

# Contexto: A classe 'Product' representa um produto em uma loja online. Cada produto
# possui um nome, preço base e uma porcentagem de desconto. O método
# 'calculate_discounted_price' deve calcular o preço com desconto do produto.

# Implemente a solução no método 'calculate_discounted_price' abaixo:

class Product
  attr_reader :name, :base_price, :discount_percentage

  def initialize(name, base_price, discount_percentage)
    @name = name
    @base_price = base_price
    @discount_percentage = discount_percentage
  end

  def calculate_discounted_price
    # Sua implementação aqui
  end
end

# Testes

RSpec.describe Product do
  describe '#calculate_discounted_price' do
    let(:product_no_discount) { Product.new('Camiseta', 50, 0) }
    let(:product_discount) { Product.new('Calça', 80, 15) }
    let(:product_max_discount) { Product.new('Tênis', 120, 50) }
    let(:product_half_price) { Product.new('Bolsa', 60, 50) }
    let(:product_large_price) { Product.new('Jaqueta', 200, 10) }

    context 'quando não há desconto' do
      it 'retorna o preço base do produto' do
        expect(product_no_discount.calculate_discounted_price).to eq(50)
      end
    end

    context 'quando há desconto aplicado' do
      it 'retorna o preço com desconto aplicado' do
        expect(product_discount.calculate_discounted_price).to eq(68)
      end
    end

    context 'quando o desconto é o máximo possível' do
      it 'retorna o preço com desconto aplicado' do
        expect(product_max_discount.calculate_discounted_price).to eq(60)
      end
    end

    context 'quando o desconto é a metade do preço' do
      it 'retorna o preço com desconto aplicado' do
        expect(product_half_price.calculate_discounted_price).to eq(30)
      end
    end

    context 'quando o preço base é alto e o desconto é aplicado' do
      it 'retorna o preço com desconto aplicado' do
        expect(product_large_price.calculate_discounted_price).to eq(180)
      end
    end
  end
end
