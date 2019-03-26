Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file}

module PageObjects

    def login
        @login ||= Login.new
    end

end