class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.text :address
      t.string :tel
      t.string :category

      t.timestamps
    end
  end
end
