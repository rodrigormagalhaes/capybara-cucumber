class Login < SitePrism::Page

    set_url '/'

    element :userName, '#user-name'
    element :password, '#password'
    element :btn_login, 'input[value="LOGIN"]'

    def doLogin(userNameValue, passwordValue)
        userName.set(userNameValue)
        password.set(passwordValue)

        btn_login.click()
    end

end