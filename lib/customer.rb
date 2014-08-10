class Customer

  attr_accessor :name
  attr_accessor :address
  attr_accessor :phone_number
  attr_accessor :email

    def initialize(name)
      @name = name
    end

    def update_address_with(address)
      @address = address
    end

    def update_phone_number_with(phone_number)
      @phone_number = phone_number
    end

    def update_email_with(email)
      @email = email
    end

end
