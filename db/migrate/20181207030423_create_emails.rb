class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :password
      t.string :name

      t.timestamps null: false
    end
  end
end
