class RemoveAddressFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :address, :string
  end
end
