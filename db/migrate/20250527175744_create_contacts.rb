class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.integer :from_id
      t.integer :to_id

      t.timestamps
    end
    add_index :contacts, :from_id
    add_index :contacts, :to_id
  end
end
