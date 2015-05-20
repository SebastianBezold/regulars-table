class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.belongs_to :employee, index: true

      t.timestamps null: false
    end
    add_foreign_key :events, :employees
  end
end
