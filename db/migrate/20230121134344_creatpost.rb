class Creatpost < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.references :user , null: false , foreign_key: true
     end
  end
end
