class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.integer :grade, null: false
      t.datetime :start_day_at, null: false
      t.datetime :finish_day_at, null: false

      t.timestamps
    end
  end
end
