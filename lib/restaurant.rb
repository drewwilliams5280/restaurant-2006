class Restaurant
  attr_reader :name, :opening_time, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @menu_dishes = []
  end

  def closing_time(hours)
    (@opening_time.to_i + hours).to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i <= 11
  end

  def menu_dish_names
    @dishes.map(&:upcase)
  end
end
