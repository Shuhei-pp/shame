class CreateWrites < ActiveRecord::Migration[6.1]
  def change
    create_table :writes do |t|
      t.text :item

      t.timestamps
    end
  end
end
