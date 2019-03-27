class Cart < SitePrism::Page

    set_url '/cart.html'

    element :btnCheckout, 'a.btn_action.checkout_button'

    def doCheckout()
        btnCheckout.click()
    end

end