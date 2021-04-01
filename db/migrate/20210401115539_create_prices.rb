class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.text :grade, null: false

      t.timestamps
    end
  end
end
