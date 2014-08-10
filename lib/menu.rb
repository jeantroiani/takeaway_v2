class Menu

  attr_accessor :main_dishes
  attr_accessor :entrees
  attr_accessor :beverages

    def initialize
      @main_dishes = []
      @entrees     = []
      @beverages   = []
    end

    def add_main_dish(*new_dish)
      new_dish.each{|dish| main_dishes << dish}
    end

    def add_entree(*new_entree)
      new_entree.each{|entree| entrees << entree}
    end

    def add_beverage(*new_beverage)
      new_beverage.each{|beverage| beverages << beverage}
    end

end
