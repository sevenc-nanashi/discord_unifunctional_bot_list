class CreateBots < ActiveRecord::Migration[7.0]
  def change
    create_table :bots, id: false do |t|
      t.string :id, primary_key: true
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
