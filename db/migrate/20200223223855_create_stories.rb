class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :name
      t.timestamps
    end

    create_join_table :events, :stories
  end
end
