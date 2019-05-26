class CreateCalendarTable < ActiveRecord::Migration[5.1]
  def change
    create_table :calendars do |t|
      t.references :player, foreign_key: true
      t.datetime :now, default: Time.new(2030, 5, 13, 9)

      t.timestamps
    end
  end

end
