# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.integer :edition
      t.string :publisher
      t.integer :quntity

      t.timestamps
    end
  end
end
