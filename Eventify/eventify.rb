require 'date'

# Desafio: Implementar o método 'can_participate' da classe 'Event',
# que deve verificar se um participante pode participar de um evento,
# com base em sua data de nascimento e na restrição de idade do evento.

# Contexto: A empresa "Eventify" está desenvolvendo um sistema para gerenciar
# eventos e inscrições de participantes. O método 'can_participate' deve receber
# a data de nascimento de um participante e a restrição de idade do evento.
# Ele deve retornar true se o participante tiver idade suficiente para participar
# do evento, caso contrário, deve retornar false.

class Event
  def can_participate(birthdate, age_restriction)
    #Adicione seu código aqui
  end
end

# Testes

RSpec.describe Event do
  describe '#can_participate' do
    let(:event) { Event.new }

    it 'verifica se um participante pode participar de um evento com restrição de idade de 18 anos' do
      birthdate = Date.today.prev_year(20)
      age_restriction = 18
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(true)
    end

    it 'verifica se um participante pode participar de um evento com restrição de idade de 21 anos' do
      birthdate = Date.today.prev_year(25)
      age_restriction = 21
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(true)
    end

    it 'verifica se um participante pode participar de um evento com restrição de idade de 30 anos' do
      birthdate = Date.today.prev_year(28)
      age_restriction = 30
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(false)
    end

    it 'verifica se um participante pode participar de um evento com restrição de idade de 16 anos' do
      birthdate = Date.today.prev_year(14)
      age_restriction = 16
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(false)
    end

    # Candidato: Adicione mais 6 cenários de teste aqui
    it 'verifica se um participante pode participar de um evento com restrição de idade de 25 anos' do
      birthdate = Date.today.prev_year(26)
      age_restriction = 25
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(true)
    end

    it 'verifica se um participante pode participar de um evento com restrição de idade de 40 anos' do
      birthdate = Date.today.prev_year(38)
      age_restriction = 40
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(false)
    end

    it 'verifica se um participante pode participar de um evento com restrição de idade de 60 anos' do
      birthdate = Date.today.prev_year(58)
      age_restriction = 60
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(true)
    end

    it 'verifica se um participante pode participar de um evento com restrição de idade de 12 anos' do
      birthdate = Date.today.prev_year(10)
      age_restriction = 12
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(false)
    end

    it 'verifica se um participante pode participar de um evento com restrição de idade de 30 anos' do
      birthdate = Date.today.prev_year(32)
      age_restriction = 30
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(true)
    end

    it 'verifica se um participante pode participar de um evento com restrição de idade de 50 anos' do
      birthdate = Date.today.prev_year(48)
      age_restriction = 50
      can_participate = event.can_participate(birthdate, age_restriction)
      expect(can_participate).to eq(true)
    end
  end
end

