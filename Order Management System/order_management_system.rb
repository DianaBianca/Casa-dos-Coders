# Desafio: Implementar um sistema de gerenciamento de pedidos de uma loja online.
# O sistema deve permitir que os clientes façam pedidos, os funcionários da loja processem
# esses pedidos e o sistema forneça informações sobre os pedidos existentes.

# Contexto: A loja online "FashionShop" vende roupas e acessórios de moda. Eles estão expandindo
# seus negócios e precisam de um sistema para gerenciar seus pedidos de forma eficiente.
# Cada pedido é composto por um número de pedido, data de criação, lista de produtos e status
# do pedido (pendente, processado, enviado). Os funcionários da loja precisam ser capazes de
# processar os pedidos e atualizar seu status.

# Implemente a solução no código abaixo:

class Order
  attr_reader :order_number, :created_date, :products
  attr_accessor :status

  def initialize(order_number, created_date, products)
    @order_number = order_number
    @created_date = created_date
    @products = products
    @status = :pendente
  end

  def process_order
    # Lógica de processamento do pedido
    # Deve ser implementada aqui
    @status = :processado
  end

  def ship_order
    # Lógica de envio do pedido
    # Deve ser implementada aqui
    @status = :enviado
  end
end

class OrderManagementSystem
  def initialize
    @orders = []
  end

  def place_order(order_number, created_date, products)
    order = Order.new(order_number, created_date, products)
    @orders << order
    order
  end

  def get_orders_by_status(status)
    @orders.select { |order| order.status == status }
  end
end

# Testes

RSpec.describe OrderManagementSystem do
  require 'date'
  describe '#place_order' do
    let(:system) { OrderManagementSystem.new }

    it 'cria um novo pedido' do
      order = system.place_order('001', Date.today, ['Camiseta', 'Calça'])
      expect(order).to be_instance_of(Order)
    end
  end

  describe '#get_orders_by_status' do
    let(:system) { OrderManagementSystem.new }
    let(:order1) { Order.new('001', Date.today, ['Camiseta']) }
    let(:order2) { Order.new('002', Date.today, ['Calça']) }
    let(:order3) { Order.new('003', Date.today, ['Vestido']) }

    before do
      system.place_order(order1.order_number, order1.created_date, order1.products)
      system.place_order(order2.order_number, order2.created_date, order2.products)
      system.place_order(order3.order_number, order3.created_date, order3.products)
    end

    it 'retorna os pedidos com o status fornecido' do
      order1.process_order
      order2.ship_order
      expect(system.get_orders_by_status(:processado)).to eq([order1])
      expect(system.get_orders_by_status(:enviado)).to eq([order2])
    end
  end
end

