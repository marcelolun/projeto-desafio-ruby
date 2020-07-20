

Dado('que eu realizei uma consulta pelo CEP {string}') do |cep|

    @request = HTTParty.get 'https://viacep.com.br/ws/'+cep+'/json/' 

  end
  
  
  Então('devo receber um código de sucesso') do

    expect(@request.code).to eq 200

  end
  
  Então('imprimir o código do IBGE {string} no console') do |ibge_code|
    
    log @request["ibge"]

  end

  Então('eu receber receber uma infomação de erro {string}') do |error|

     expect(@request["erro"]).to eq true

  end