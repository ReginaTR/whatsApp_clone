class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.string :body
      t.datetime :sent_at

      t.timestamps
    end
  end
end
