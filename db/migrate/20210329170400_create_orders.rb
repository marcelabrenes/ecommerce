class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user
      t.string :number
      t.decimal :total, default: 0
      t.string :state

      t.timestamps
    end
  end
end
