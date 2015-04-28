require ('rspec')
require ('places')


describe(Place) do
  describe("#location") do
    it("return places you have been") do
       test_place = Place.new('Portland')
       expect(test_place.location()).to(eq('Portland'))
     end
   end
   describe('.all') do
     it('empty array at first') do
       expect(Place.all()).to(eq([]))
     end
   end
   describe('#save') do
     it('stores the location you have been to') do
       test_place = Place.new("Portland")
       test_place.save()
       expect(Place.all()).to(eq([test_place]))
     end
  end
   describe('.clear') do
     it('clears out locations all places array') do
       Place.new('portland').save()
       Place.clear()
       expect(Place.all()).to(eq([]))
      end
    end
 end
