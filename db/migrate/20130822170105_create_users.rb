class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :password_digest
      t.string :email
      t.string :location
      t.date :death

      t.timestamps
    end
  end
end
