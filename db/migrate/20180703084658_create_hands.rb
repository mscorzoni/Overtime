class CreateHands < ActiveRecord::Migration[5.1]
  def change
    create_table :hands do |t|
      t.string :manager
      t.integer :hand_id
      t.integer :user_id

      t.timestamps
    end
  end
end
