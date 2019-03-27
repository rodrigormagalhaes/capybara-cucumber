class CheckoutComplete < SitePrism::Page

    set_url '/checkout-complete.html'

    element :confirmationMsg, '#checkout_complete_container > h2'
    element :deliveryMsg, '#checkout_complete_container > div.complete-text'

end