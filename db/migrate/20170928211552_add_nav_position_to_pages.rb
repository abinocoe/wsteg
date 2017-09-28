class AddNavPositionToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :nav_position, :integer
  end
end
