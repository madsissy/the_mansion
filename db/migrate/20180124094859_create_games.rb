class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.integer :strength
      t.integer :agility
      t.integer :will
      t.integer :charisma
      t.integer :intelligence
      t.integer :energy, default: 100
      t.integer :hygiene, default: 100
      t.integer :arousal, default: 0
      t.integer :feminity, default: 0
      t.text :relations

      t.timestamps
    end
  end
end
