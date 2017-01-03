class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.text :email
      t.string :password_digest
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
