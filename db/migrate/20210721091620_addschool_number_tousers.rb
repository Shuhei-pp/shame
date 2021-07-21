class AddschoolNumberTousers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :school_number, :string
    add_column :users, :name, :string
    add_column :users, :faculty, :string
    add_column :users, :school_program, :string
    add_column :users, :grade, :string

  end
end
