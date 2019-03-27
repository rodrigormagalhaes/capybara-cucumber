Dado("que estou na página de login") do
    login.load
end

Quando("efetuo login com {string} e {string}") do |userName, password|
    login.doLogin(userName, password)
end

Então("sou redirecionado para página de Produtos") do
    expect(page).to have_current_path('https://www.saucedemo.com/inventory.html', url:true)
end

