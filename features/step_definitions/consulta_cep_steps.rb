

Dado('que eu realizei uma consulta pelo CEP {string}') do |cep|

    @request = HTTParty.get 'https://viacep.com.br/ws/'+cep+'/json/' 

  end
  
  
  Então('devo receber um código de sucesso') do |status_code|

    expect(@request.code).to eq 200

  end
  
  Então('visualizar os código do IBGE {string} no stdout') do |ibge_code|
    
    log @request["ibge"]

  end

  Então('eu receber receber uma infomação de erro {string}') do |error|

     expect(@request["erro"]).to eq true

  end