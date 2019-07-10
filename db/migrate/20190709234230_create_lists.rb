class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :nombre
      t.numeric :indx
      t.numeric :cant
      t.numeric :eq
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
