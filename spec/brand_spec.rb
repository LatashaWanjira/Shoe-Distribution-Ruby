require("spec_helper")

describe(Store) do
  describe("#brands") do
    it("returns all the brands in a particular Store") do
      store = Store.new({:store_name => "AFS", :id => nil})
      store.save()
      adidas = Brand.new({:brand_name => "Adidas", :id => nil})
      adidas.save()
      vans = Brand.new({:brand_name => "Vans", :id => nil})
      vans.save()
      store.update({:brand_ids => [adidas.id(), vans.id()]})
      expect(store.brands()).to(eq([adidas, vans]))
    end
  end
end
