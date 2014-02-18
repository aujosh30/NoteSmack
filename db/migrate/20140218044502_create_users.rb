class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Email
      t.string :UserName
      t.string :Password
      t.string :School
      t.datetime :DateCreated
      t.timestamps
    end
  end
end
