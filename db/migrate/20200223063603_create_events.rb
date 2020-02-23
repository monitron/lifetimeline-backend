class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, :null => false
      t.text :description
      t.date :date
      t.boolean :approximate, :null => false, :default => false
      t.timestamps
    end
  end
end
