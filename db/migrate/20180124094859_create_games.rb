class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.references :user, foreign_key: true
      t.string  :firstname
      t.string  :lastname
      t.integer :strength, default: 50
      t.integer :agility, default: 50
      t.integer :will, default: 100
      t.integer :charisma, default: 50
      t.integer :intelligence, default: 50
      t.integer :hunger, default: 100
      t.integer :thirst, default: 100
      t.integer :energy, default: 100
      t.integer :hygiene, default: 100
      t.integer :arousal, default: 0
      t.integer :feminity, default: 0
      t.integer :money, defaut: 300
      t.integer :bank_account_balance, default: 0
      t.integer :eyes_color
      t.integer :hair_color
      t.integer :hair_length
      t.integer :lips_size, default: 0
      t.integer :breast_size, default: 0
      t.integer :ass_size, default: 0
      t.integer :dick_size, default: 0
      t.boolean :chastity, default: false
      t.text :relations

      t.timestamps
    end
  end
end
