class AddColumnMailrecodes < ActiveRecord::Migration[6.1]
  def change
    add_column :mailrecodes, :wish, :string
  end
end
