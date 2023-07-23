# Desafio: Implementar o método 'get_available_rooms' da classe 'Hotel',
# que deve retornar uma lista de quartos disponíveis em um hotel para um determinado
# período de tempo.

# Contexto: O Hotel ABC está desenvolvendo um sistema de gerenciamento de quartos.
# Eles precisam implementar a funcionalidade de busca por quartos disponíveis em
# um determinado período de tempo. Cada quarto tem um número único e pode estar
# disponível ou ocupado durante um período específico.

# Implemente a solução no método 'get_available_rooms' abaixo:

class Hotel
  def initialize
    @rooms = {}  # Hash para armazenar informações dos quartos
  end

  def add_room(room_number, availability_periods)
    @rooms[room_number] = availability_periods
  end

  def get_available_rooms(start_date, end_date)
    available_rooms = []

    # Lógica de verificação de disponibilidade dos quartos
    # Deve ser implementada aqui

    available_rooms
  end

  private

  def overlap?(start_date1, end_date1, start_date2, end_date2)
    end_date1 > start_date2 && end_date2 > start_date1
  end
end

# Testes

RSpec.describe Hotel do
  require 'date'

  describe '#get_available_rooms' do
    let(:hotel) { Hotel.new }

    before do
      # Adicionando quartos e suas disponibilidades
      hotel.add_room(101, [{ start_date: Date.parse('2023-07-01'), end_date: Date.parse('2023-07-05') },
                           { start_date: Date.parse('2023-07-10'), end_date: Date.parse('2023-07-15') }])

      hotel.add_room(102, [{ start_date: Date.parse('2023-07-03'), end_date: Date.parse('2023-07-07') },
                           { start_date: Date.parse('2023-07-12'), end_date: Date.parse('2023-07-18') }])

      hotel.add_room(103, [{ start_date: Date.parse('2023-07-02'), end_date: Date.parse('2023-07-08') },
                           { start_date: Date.parse('2023-07-14'), end_date: Date.parse('2023-07-19') }])

      hotel.add_room(104, [{ start_date: Date.parse('2023-07-06'), end_date: Date.parse('2023-07-11') },
                           { start_date: Date.parse('2023-07-16'), end_date: Date.parse('2023-07-20') }])
    end

    context 'quando há quartos disponíveis no período solicitado' do
      it 'retorna a lista de quartos disponíveis' do
        start_date = Date.parse('2023-07-05')
        end_date = Date.parse('2023-07-09')
        expect(hotel.get_available_rooms(start_date, end_date)).to eq([102, 103, 104])
      end
    end

    context 'quando não há quartos disponíveis no período solicitado' do
      it 'retorna uma lista vazia' do
        start_date = Date.parse('2023-07-12')
        end_date = Date.parse('2023-07-17')
        expect(hotel.get_available_rooms(start_date, end_date)).to eq([])
      end
    end
  end
end

