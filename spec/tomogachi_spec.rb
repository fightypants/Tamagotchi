require ('rspec')
require ('Tamagotchi')


describe(Tamagotchi) do
  before() do
    Tamagotchi.clear()
  end



  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food()).to(eq(10))
      expect(my_pet.rest()).to(eq(10))
      expect(my_pet.activity()).to(eq(10))
    end
  end

  describe("#time_passes") do
     it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()
      expect(my_pet.food()).to(eq(9))
    end
end
  describe("#is_alive") do
     it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("lil dragon")
     expect(my_pet.is_alive()).to(eq(true))
    end
  end

    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("lil dragon")
       my_pet.set_food_level(0)
       expect(my_pet.is_alive()).to(eq(false))
     end
   end
