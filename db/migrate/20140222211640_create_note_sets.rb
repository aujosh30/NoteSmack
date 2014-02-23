class CreateNoteSets < ActiveRecord::Migration
  def change
    create_table :note_sets do |t|
      t.string :title
      t.string :description
      t.string :school_id
      t.string :class
      t.string :section
      t.string :type
      t.datetime :class_date
      t.string  :username
      t.datetime :submit_date
      t.timestamps
    end
  end
end
