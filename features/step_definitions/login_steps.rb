Dado("que eu acesso a página principal") do
    visit 'https://mark7.herokuapp.com'
  end
  
  Quando("eu faço login com {string} e {string}") do |email, senha|
    @email = email
    LoginPage.new.faz_login(email, senha)
  end
  
  Então("devo ser autenticado com sucesso") do
    expect(page).to have_content @email  
  end
  
  Então("devo ver a seguinte mensagem: {string}") do |mensagem|
    expect(page).to  have_content mensagem
  end