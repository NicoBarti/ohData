class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.numeric :itemid
      t.numeric :alt
      t.numeric :tiempo
      t.numeric :secuencia
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
