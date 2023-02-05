class RemoveColumnAgeFrom < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :age, :string 
  end
end
