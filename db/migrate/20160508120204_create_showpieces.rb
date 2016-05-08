class CreateShowpieces < ActiveRecord::Migration
  def change
    create_table :showpieces do |t|
      t.string :name
      t.integer :creation_century
      t.text :description
      t.float :insurance
      t.float :height
      t.float :width
      t.float :length
      t.boolean :temperature_control
      t.boolean :wet_control
      t.boolean :people_protection
      t.references :collection_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
