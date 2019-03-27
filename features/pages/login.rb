class Login < SitePrism::Page

    set_url '/'

    element :userName, '#user-name'
    element :password, '#password'
    element :btnLogin, 'input[value="LOGIN"]'
    element :errorMsg, '#login_button_container h3'

    def doLogin(userNameValue, passwordValue)
        userName.set(userNameValue)
        password.set(passwordValue)

        btnLogin.click()
    end

end