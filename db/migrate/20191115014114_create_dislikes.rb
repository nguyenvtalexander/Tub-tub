class CreateDislikes < ActiveRecord::Migration[5.2]
  def change
    create_table :dislikes do |t|
      t.integer :user_id, null: false
      t.integer :video_id, null: false
      t.timestamps
    end
    add_index :dislikes, [:user_id, :video_id], unique: true
  end
end
