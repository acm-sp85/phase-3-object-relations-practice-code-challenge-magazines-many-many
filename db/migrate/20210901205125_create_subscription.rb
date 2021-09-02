class CreateSubscription < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :magazine_id
      t.integer :reader_id
      t.decimal :price
    end
  end
end
