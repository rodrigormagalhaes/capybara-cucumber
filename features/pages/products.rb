class Products < SitePrism::Page

    set_url '/inventory.html'

    element :btnAdd, '#inventory_container > div > div:nth-child(3) button'
    element :cart, '#shopping_cart_container'

    def addProductToCart()
        btnAdd.click()
        cart.click()
    end

end