class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :employee_id
      t.integer :event_id
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
