class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.integer :grade
      t.datetime :start_day_at
      t.datetime :finish_day_at

      t.timestamps
    end
  end
end
