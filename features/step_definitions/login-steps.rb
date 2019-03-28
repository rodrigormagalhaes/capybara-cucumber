Dado("que estou na página de login") do
    login.load
end

Quando("efetuo login com {string} e {string}") do |userName, password|
    login.doLogin(userName, password)
end

Então("sou redirecionado para página de Produtos") do
    expect(page).to have_current_path(PRODUCTS_URL, url:true)
end

Então("login não é realizado") do
    expect(page).to have_current_path(CONFIG['default_url'], url:true)
end

Então("é exibida mensagem de usuário bloqueado") do
    expect(login.errorMsg.text).to eql(BLOCKED_USER_MSG)
end

Então("é exibida mensagem de usuário inexistente") do
    expect(login.errorMsg.text).to eql(INVALID_USER_MSG)    
end