class CreateMessageDeliveries < ActiveRecord::Migration[8.0]
  def change
    create_table :message_deliveries do |t|
      t.integer :message_id
      t.integer :individual_receiver_id
      t.integer :group_invitation_id
      t.datetime :delivered_at
      t.datetime :read_at

      t.timestamps
    end
  end
end
