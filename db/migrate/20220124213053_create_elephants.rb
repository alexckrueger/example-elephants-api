class CreateElephants < ActiveRecord::Migration[7.0]
  def change
    create_table :elephants do |t|
      t.string :name
      t.decimal :trunk_size
      t.string :breed
      t.integer :user_id

      t.timestamps
    end
  end
end
