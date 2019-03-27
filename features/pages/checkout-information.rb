class CheckoutInformation < SitePrism::Page

    set_url '/checkout-step-one.html'

    element :firstName, '#first-name'
    element :lastName, '#last-name'
    element :zipCode, '#postal-code'  
    element :btnContinue, 'input[value="CONTINUE"]'  

    def setCheckoutInformation(firstNameValue, lastNameValue, zipCodeValue)
        firstName.set(firstNameValue)
        lastName.set(lastNameValue)
        zipCode.set(zipCodeValue)
        
        btnContinue.click()

    end

end