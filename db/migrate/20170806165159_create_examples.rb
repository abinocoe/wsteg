class CreateExamples < ActiveRecord::Migration[5.1]
  def change
    create_table :examples do |t|
      t.string :title
      t.string :publisher

      t.timestamps
    end
  end
end
