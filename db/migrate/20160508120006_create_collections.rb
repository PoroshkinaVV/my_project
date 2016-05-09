class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.text :description

      t.index [:name, :start_date, :end_date], unique: true

      t.timestamps null: false
    end
  end
end
