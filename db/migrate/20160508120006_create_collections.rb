class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps null: false
    end
  end
end
