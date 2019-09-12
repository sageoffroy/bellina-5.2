class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.integer :cuil
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
