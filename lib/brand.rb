class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)

  # define_method(:update) do |attributes|
  #   @brand_name = attributes.fetch(:brand_name, @brand_name)
  #   DB.exec("UPDATE brands SET brand_name = '#{@brand_name}' WHERE id = #{self.id()};")

  #   attributes.fetch(:store_ids, []).each() do |store_id|
  #     DB.exec("INSERT INTO brands_stores (brand_id, store_id) VALUES (#{self.id()}, #{store_id});")
  #   end
  # end
end
