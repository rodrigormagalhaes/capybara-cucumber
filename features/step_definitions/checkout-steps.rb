Dado("que realizo login na aplicação") do
    login.load
    login.doLogin(USER, PASSWORD)
end

Quando("seleciono um produto para comprar") do
    products.addProductToCart()
end

Quando("confirmo a compra") do
    cart.doCheckout()
end

Quando("preencho as informações de finalização da compra") do
    checkoutInformation.setCheckoutInformation(FIRST_NAME, LAST_NAME, ZIP_CODE)
end

Quando("finalizo a compra") do
    checkoutOverView.confirmCheckout()
end

Então("a compra é realizada com sucesso") do
    expect(page).to have_current_path(CHECKOUT_COMPLETE_URL, url:true)
    expect(checkoutComplete.confirmationMsg.text).to eql(CONFIRMATION_MESSAGE)
    expect(checkoutComplete.deliveryMsg.text).to eql(DELIVERY_MESSAGE)
end