class CreateAnkits < ActiveRecord::Migration[6.0]
  def change
    create_table :ankits do |t|
      t.string :name
      t.string :email
      t.string :age

      t.timestamps
    end
  end
end
