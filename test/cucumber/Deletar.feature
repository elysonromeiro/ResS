Feature: Deletar pontos de coleta
  As a membro da empresa coletora
  I want to deletar pontos de coleta
  so that eles sejam apagados do sistema
#GUI
  Scenario: Deletar ponto de coleta interrompido
    Given Estou na pagina de visualizacao do ponto de coleta com nome "RU"
    And Eu seleciono a opcao para remocao do ponto de coleta com nome "RU" e recuso a mensagem de confirmacao
    Then Eu visualizo ponto na pagina de listagem

  Scenario: Deletar ponto de coleta
    Given Estou na pagina de visualizacao do ponto de coleta com nome "RU" e data "20/09/1996"
    When Eu seleciono a opcao para remocao do ponto de coleta com nome "RU" e data "20/09/1996" e aceito a mensagem de confirmacao
    Then Eu nao visualizo mais o ponto na pagina de listagem
#CONTROLADOR

  Scenario: Deletar pontos de coleta
	Given O sistema possui o ponto de coleta com nome "RU"
	When Eu deleto o ponto de coleta com nome "RU" 
	Then O sistema nao possui mais o ponto de coleta com nome "RU"
	
  

