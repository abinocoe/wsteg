class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.boolean :indexpertise, default: false

      t.timestamps
    end
  end
end
