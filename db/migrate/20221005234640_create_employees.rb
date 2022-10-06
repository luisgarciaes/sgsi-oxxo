class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :employees, :deleted_at
  end
end
