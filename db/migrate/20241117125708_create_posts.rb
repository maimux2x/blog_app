class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.text         :text,  null: false
      t.references   :user, foreign_key: true
      t.timestamps
    end
  end
end
