class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.date :fecha
      t.boolean :estado
      t.text :texto
      t.references :autor, index: true

      t.timestamps
    end
  end
end
