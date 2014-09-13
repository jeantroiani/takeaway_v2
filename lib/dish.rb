class Dish

  attr_accessor :name
  attr_accessor :price
  attr_reader   :description

    def initialize(name,price)
      @name  = name
      @price = price
    end

    def add_description(describe)
      @description = describe
    end

    def ingredients
      @ingredients||= []
    end

    def add_ingredient(materials)
      ingredients << materials
    end

end
