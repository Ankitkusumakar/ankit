class RemoveAutherFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :auther, :string
  end
end
