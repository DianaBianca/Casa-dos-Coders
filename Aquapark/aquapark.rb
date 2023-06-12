# Desafio: Implementar o método 'can_access_ride' da classe 'Park',
# que deve verificar se um visitante pode acessar um determinado brinquedo
# com base em sua altura e idade.

# Contexto: O parque aquático "AquaPark" está implementando um sistema de reservas
# e controle de acesso aos brinquedos. O método 'can_access_ride' deve receber a altura
# e a idade de um visitante, bem como as restrições de altura mínima e idade mínima
# para um determinado brinquedo. Ele deve retornar true se o visitante atender aos
# requisitos de acesso, caso contrário, deve retornar false.

class Park
  def can_access_ride(height, age, height_restriction, age_restriction)
   #Adicione seu codigo aqui
  end
end

# Testes

RSpec.describe Park do
  describe '#can_access_ride' do
    let(:park) { Park.new }

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 120cm e idade mínima de 10 anos' do
      height = 130
      age = 12
      height_restriction = 120
      age_restriction = 10
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(true)
    end

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 110cm e idade mínima de 8 anos' do
      height = 115
      age = 9
      height_restriction = 110
      age_restriction = 8
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(true)
    end

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 130cm e idade mínima de 12 anos' do
      height = 125
      age = 15
      height_restriction = 130
      age_restriction = 12
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(false)
    end

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 100cm e idade mínima de 6 anos' do
      height = 105
      age = 5
      height_restriction = 100
      age_restriction = 6
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(false)
    end

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 120cm e idade mínima de 10 anos' do
      height = 135
      age = 9
      height_restriction = 120
      age_restriction = 10
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(false)
    end

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 110cm e idade mínima de 8 anos' do
      height = 110
      age = 8
      height_restriction = 110
      age_restriction = 8
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(true)
    end

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 130cm e idade mínima de 12 anos' do
      height = 130
      age = 13
      height_restriction = 130
      age_restriction = 12
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(true)
    end

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 100cm e idade mínima de 6 anos' do
      height = 100
      age = 7
      height_restriction = 100
      age_restriction = 6
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(true)
    end

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 120cm e idade mínima de 10 anos' do
      height = 115
      age = 11
      height_restriction = 120
      age_restriction = 10
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(false)
    end

    it 'verifica se um visitante pode acessar um brinquedo com altura mínima de 110cm e idade mínima de 8 anos' do
      height = 110
      age = 7
      height_restriction = 110
      age_restriction = 8
      can_access_ride = park.can_access_ride(height, age, height_restriction, age_restriction)
      expect(can_access_ride).to eq(false)
    end
  end
end

