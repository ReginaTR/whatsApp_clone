class CreateDisplayConfigurations < ActiveRecord::Migration[8.0]
  def change
    create_table :display_configurations do |t|
      t.string :name
      t.string :avatar
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
