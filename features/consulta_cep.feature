#language:pt    

Funcionalidade: Login


     
    Cenario: Consulta CEP válido exibindo código IBGE
    
        Dado que eu realizei uma consulta pelo CEP "41610031"
        Então devo receber um código de sucesso
        E imprimir o código do IBGE "2927408" no console

    Cenario: Consulta CEP inválido

        Dado que eu realizei uma consulta pelo CEP "12345678"
        Então eu receber receber uma infomação de erro "true"