class CreateMailrecodes < ActiveRecord::Migration[6.1]
  def change
    create_table :mailrecodes do |t|
      t.integer :user_id
      t.integer :mail_form_id
      t.string :teacher
      t.string :lesson_name
      t.string :lesson_term
      t.string :lesson_number
      t.string :lesson_schedule
      t.string :reason
      t.string :task
      t.string :requirement

      t.timestamps
    end
  end
end
