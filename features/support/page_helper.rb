Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file}

module PageObjects

    def login
        @login ||= Login.new
    end

    def cart
        @cart ||= Cart.new
    end

    def checkoutInformation
        @checkoutInformation ||= CheckoutInformation.new
    end

    def checkoutComplete
        @checkoutComplete ||= CheckoutComplete.new
    end

    def checkoutOverView
        @checkoutOverView ||= CheckoutOverView.new
    end

    def products
        @products ||= Products.new
    end

end