class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table(:brands) do |t|
      t.column(:brand_name, :string)

      t.timestamps()
    end
  end
end
