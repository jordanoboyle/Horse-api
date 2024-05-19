class CreateHorses < ActiveRecord::Migration[7.1]
  def change
    create_table :horses do |t|
      t.string :name
      t.string :color
      t.integer :weight
      t.integer :price

      t.timestamps
    end
  end
end
