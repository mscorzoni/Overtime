class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.date :date
      t.text :work_performed

      t.timestamps
    end
  end
end
