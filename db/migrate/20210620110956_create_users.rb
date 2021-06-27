class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :faculty
      t.string :program
      t.integer :grade
      t.string :student_number
      t.integer :admin

      t.timestamps
    end
  end
end
