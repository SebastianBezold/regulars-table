class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.belongs_to :event, index: true
      t.belongs_to :employee, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :events
    add_foreign_key :comments, :employees
  end
end
