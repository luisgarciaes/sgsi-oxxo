class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :products, :deleted_at
  end
end
