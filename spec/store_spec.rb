require("spec_helper")

describe(Brand) do
  describe("#stores") do
    it("returns all of the stores a particular brand is in") do
      city = Store.new(:store_name => "City Walk", :id => nil)
      city.save()
      bata = Store.new(:store_name => "Bata", :id => nil)
      bata.save()
      brand = Brand.new(:brand_name => "Adidas", :id => nil)
      brand.save()
      brand.update({:store_ids => [bata.id()]})
      brand.update({:store_ids => [city.id()]})

      # brand.update(:store_ids => [bata.id()])
      # brand.update(:store_ids => [city.id()])
      expect(brand.stores()).to(eq([bata, city]))
    end
  end
end
