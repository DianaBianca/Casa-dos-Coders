require 'date'

# Desafio: Implementar o método 'calculate_age' da classe 'Person',
# que deve calcular a idade de uma pessoa com base em sua data de nascimento.

# Contexto: A empresa "MyFamilyTree" está desenvolvendo um sistema de genealogia
# que requer o cálculo preciso da idade das pessoas cadastradas. O método
# 'calculate_age' deve receber a data de nascimento de uma pessoa e retornar sua idade
# em anos, considerando a data atual.

class Person
  def calculate_age(birthdate)
    #Adicione seu código aqui
  end
end

# Testes
RSpec.describe Person do
  describe '#calculate_age' do
    let(:person) { Person.new }

    it 'calcula corretamente a idade para uma pessoa nascida há 20 anos' do
      birthdate = Date.today.prev_year(20)
      age = person.calculate_age(birthdate)
      expect(age).to eq(20)
    end

    it 'calcula corretamente a idade para uma pessoa nascida há 35 anos' do
      birthdate = Date.today.prev_year(35)
      age = person.calculate_age(birthdate)
      expect(age).to eq(35)
    end

    it 'calcula corretamente a idade para uma pessoa nascida há 10 anos' do
      birthdate = Date.today.prev_year(10)
      age = person.calculate_age(birthdate)
      expect(age).to eq(10)
    end

    it 'calcula corretamente a idade para uma pessoa nascida há 50 anos' do
      birthdate = Date.today.prev_year(50)
      age = person.calculate_age(birthdate)
      expect(age).to eq(50)
    end

    it 'calcula corretamente a idade para uma pessoa nascida há 65 anos' do
      birthdate = Date.today.prev_year(65)
      age = person.calculate_age(birthdate)
      expect(age).to eq(65)
    end

    # Candidato: Adicione mais 5 cenários de teste aqui
    it 'calcula corretamente a idade para uma pessoa nascida há 15 anos' do
      birthdate = Date.today.prev_year(15)
      age = person.calculate_age(birthdate)
      expect(age).to eq(15)
    end

    it 'calcula corretamente a idade para uma pessoa nascida há 30 anos' do
      birthdate = Date.today.prev_year(30)
      age = person.calculate_age(birthdate)
      expect(age).to eq(30)
    end

    it 'calcula corretamente a idade para uma pessoa nascida há 5 anos' do
      birthdate = Date.today.prev_year(5)
      age = person.calculate_age(birthdate)
      expect(age).to eq(5)
    end

    it 'calcula corretamente a idade para uma pessoa nascida há 45 anos' do
      birthdate = Date.today.prev_year(45)
      age = person.calculate_age(birthdate)
      expect(age).to eq(45)
    end

    it 'calcula corretamente a idade para uma pessoa nascida há 60 anos' do
      birthdate = Date.today.prev_year(60)
      age = person.calculate_age(birthdate)
      expect(age).to eq(60)
    end
  end
end
