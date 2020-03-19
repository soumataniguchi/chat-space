class AddUserIdToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :user_id, :integer
    add_column :messages, :image, :string
  end
end
