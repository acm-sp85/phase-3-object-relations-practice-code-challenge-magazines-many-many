class DeleteNameFromSubscriptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :name, :string
  end
end
