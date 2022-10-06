# frozen_string_literal: true

class CreateCostumers < ActiveRecord::Migration[7.0]
  def change
    create_table :costumers do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :costumers, :deleted_at
  end
end
