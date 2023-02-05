class AddcolumnPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :auther, :string
  end
end
