class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
      t.references :user, foreign_key: true
    end
  end
end
