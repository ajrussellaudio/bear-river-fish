class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @belly = []
  end

  def food_count()
    return @belly.count()
  end

end
