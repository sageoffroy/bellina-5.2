class CreateTrademarks < ActiveRecord::Migration[5.2]
  def change
    create_table :trademarks do |t|
      t.string :name
      t.string :hex_code
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
