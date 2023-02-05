class AddColumnPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :age, :string
  end
end
