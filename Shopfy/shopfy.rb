# Desafio: Implementar o método 'calculate_total' da classe 'Sale',
# que deve calcular o valor total de uma venda, considerando descontos e impostos.

# Contexto: A loja online "Shopify" está desenvolvendo um sistema de gerenciamento
# de vendas. O método 'calculate_total' recebe o valor dos produtos vendidos, um
# desconto em porcentagem e a taxa de imposto em porcentagem. Ele deve calcular o
# valor total da venda, aplicando o desconto e adicionando o imposto.

class Sale
  def calculate_total(products_value, discount_percentage, tax_percentage)
   #adicione seu código aqui
  end
end

# Testes

RSpec.describe Sale do
  describe '#calculate_total' do
    let(:sale) { Sale.new }

    it 'calcula o valor total de uma venda sem desconto e sem imposto' do
      products_value = 100.0
      discount_percentage = 0.0
      tax_percentage = 0.0
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(100.0)
    end

    it 'calcula o valor total de uma venda com desconto de 10% e sem imposto' do
      products_value = 100.0
      discount_percentage = 10.0
      tax_percentage = 0.0
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(90.0)
    end

    it 'calcula o valor total de uma venda sem desconto e com imposto de 5%' do
      products_value = 100.0
      discount_percentage = 0.0
      tax_percentage = 5.0
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(105.0)
    end

    it 'calcula o valor total de uma venda com desconto de 10% e imposto de 5%' do
      products_value = 100.0
      discount_percentage = 10.0
      tax_percentage = 5.0
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(94.5)
    end

    it 'calcula o valor total de uma venda com desconto de 20% e imposto de 8.5%' do
      products_value = 250.0
      discount_percentage = 20.0
      tax_percentage = 8.5
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(225.95)
    end

    it 'calcula o valor total de uma venda com desconto de 30% e imposto de 12%' do
      products_value = 500.0
      discount_percentage = 30.0
      tax_percentage = 12.0
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(406.0)
    end

    it 'calcula o valor total de uma venda com desconto de 5% e imposto de 3%' do
      products_value = 75.5
      discount_percentage = 5.0
      tax_percentage = 3.0
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(72.74)
    end

    it 'calcula o valor total de uma venda com desconto de 15% e imposto de 7.5%' do
      products_value = 120.99
      discount_percentage = 15.0
      tax_percentage = 7.5
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(116.29)
    end

    it 'calcula o valor total de uma venda com desconto de 25% e imposto de 10%' do
      products_value = 300.0
      discount_percentage = 25.0
      tax_percentage = 10.0
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(270.0)
    end

    it 'calcula o valor total de uma venda com desconto de 40% e imposto de 15%' do
      products_value = 80.0
      discount_percentage = 40.0
      tax_percentage = 15.0
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(61.2)
    end

    it 'calcula o valor total de uma venda com desconto de 50% e imposto de 20%' do
      products_value = 200.0
      discount_percentage = 50.0
      tax_percentage = 20.0
      total_value = sale.calculate_total(products_value, discount_percentage, tax_percentage)
      expect(total_value).to eq(120.0)
    end
  end
end

