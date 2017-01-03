class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.text :email
      t.text :password

      t.timestamps null: false
    end
  end
end
