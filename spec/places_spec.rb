require ('rspec')
require ('places')


describe(Place) do
  describe("#location") do
    it("return places you have been") do
       test_place = Place.new('Portland')
       expect(test_place.location()).to(eq('Portland'))
     end
   end
 end
