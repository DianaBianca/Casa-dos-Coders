#  Aquapark

## Desafio
Implementar o método ``` 'can_access_ride'``` da classe ```'Park'```, que deve verificar se um visitante pode acessar um determinado brinquedo com base em sua ```altura``` e ```idade```.

## Contexto
 O parque aquático "AquaPark" está implementando um sistema de reservas
 e controle de acesso aos brinquedos. 
 
 O método ```'can_access_ride'``` deve receber a altura  e a idade de um visitante, bem como as restrições de altura mínima e idade mínima  para um determinado brinquedo. Ele deve retornar ```true``` se o visitante atender aos  requisitos de acesso, caso contrário, deve retornar false.

## Exemplos de entradas e saídas 

| height | age | height_restriction | age_restriction | saída |
|--------|-----|--------------------|-----------------|-------|
| 130    | 12  | 120                | 10              | true  |
| 125    | 15  | 130                | 12              | false |
| 105    | 5   | 100                | 5               | false |