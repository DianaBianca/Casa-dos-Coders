# Desafio: Implementar o método 'calculate_shipping_cost' da classe 'ShippingCalculator',
# que deve calcular o custo de envio com base no peso total dos itens e na região de entrega.

# Implemente a solução no método 'calculate_shipping_cost' abaixo:

class ShippingCalculator
  def calculate_shipping_cost(items, region)
    # Sua implementação aqui
  end
end

# Testes

RSpec.describe ShippingCalculator do
  describe '#calculate_shipping_cost' do
    let(:calculator) { ShippingCalculator.new }

    context 'quando a região de entrega é nacional' do
      it 'retorna o custo de envio baseado no peso total dos itens' do
        items = [
          { name: 'Product A', weight: 0.5 },
          { name: 'Product B', weight: 0.8 },
          { name: 'Product C', weight: 1.2 }
        ]
        region = 'Nacional'
        expect(calculator.calculate_shipping_cost(items, region)).to eq(15.5)
      end
    end

    context 'quando a região de entrega é internacional' do
      it 'retorna o custo de envio baseado no peso total dos itens multiplicado por 2.5' do
        items = [
          { name: 'Product A', weight: 0.5 },
          { name: 'Product B', weight: 0.8 },
          { name: 'Product C', weight: 1.2 }
        ]
        region = 'Internacional'
        expect(calculator.calculate_shipping_cost(items, region)).to eq(38.75)
      end
    end

    context 'quando a lista de itens está vazia' do
      it 'retorna 0 como o custo de envio' do
        items = []
        region = 'Nacional'
        expect(calculator.calculate_shipping_cost(items, region)).to eq(0)
      end
    end

    context 'quando todos os itens têm peso zero' do
      it 'retorna 0 como o custo de envio' do
        items = [
          { name: 'Product A', weight: 0 },
          { name: 'Product B', weight: 0 },
          { name: 'Product C', weight: 0 }
        ]
        region = 'Nacional'
        expect(calculator.calculate_shipping_cost(items, region)).to eq(0)
      end
    end

    context 'quando a região de entrega é inválida' do
      it 'retorna uma mensagem de erro informando a região inválida' do
        items = [
          { name: 'Product A', weight: 0.5 },
          { name: 'Product B', weight: 0.8 },
          { name: 'Product C', weight: 1.2 }
        ]
        region = 'Invalida'
        expect { calculator.calculate_shipping_cost(items, region) }.to raise_error('Região de entrega inválida')
      end
    end
  end
end

