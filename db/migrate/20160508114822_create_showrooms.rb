class CreateShowrooms < ActiveRecord::Migration
  def change
    create_table :showrooms do |t|
      t.string :name, null: false
      
      t.index :name, unique: true

      t.timestamps null: false
    end
  end
end
