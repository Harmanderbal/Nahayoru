class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.string :category
      t.attachment :avatar

      t.timestamps
    end
  end
end
