class Tamagotchi
  @@food = 0
  @@rest = 0
  @@activity = 0

  define_method(:initialize) do |name|
    @name = name
    @@dob = Time.new()
    @@food = 10
    @@rest = 10
    @@activity = 10


  end

  define_singleton_method(:clear) do
    @@status = []
    @@food = 0
    @@rest = 0
    @@activity = 0
  end

  define_method(:name) do
    @name
  end

  define_method(:food) do
    food = @@food
  end

  define_method(:rest) do
    rest = @@rest
  end

  define_method(:activity) do
    activity = @@activity
  end

  define_method(:time_passes) do
    decay = @@food.-(1)
    @@food = decay
  end

  define_method(:is_alive) do
    if @@food > 0
      true
    else
      false
    end
  end

  define_method(:set_food_level) do |level|
    @@food = level
  end

  define_method(:dob) do
    dob = @@dob
  end
end
