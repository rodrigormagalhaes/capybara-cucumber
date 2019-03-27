class CheckoutComplete < SitePrism::Page

    set_url '/checkout-complete.html'

    element :confirmationMsg_1, '#checkout_complete_container > h2'
    element :confirmationMsg_2, '#checkout_complete_container > div.complete-text'

end