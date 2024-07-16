class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :description
      t.string :category
      t.decimal :price_general
      t.decimal :price_group_1
      t.decimal :price_group_2
      t.decimal :price_sale
      t.boolean :on_sale
      t.string :product_photo
      t.text :meta_description
      t.text :meta_keywords

      t.timestamps
    end
  end
end
