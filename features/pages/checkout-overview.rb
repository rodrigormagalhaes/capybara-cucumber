class CheckoutOverView < SitePrism::Page

    set_url '/checkout-step-two.html'

    element :btnFinish, 'a[href="./checkout-complete.html"]'

    def confirmCheckout()
        
        btnFinish.click()

    end

end