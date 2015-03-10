class CreatePurposes < ActiveRecord::Migration
  def change
    create_table :purposes do |t|
      t.references :user, index: true
      t.string :goal

      t.timestamps null: false
    end
    add_foreign_key :purposes, :users
  end
end
