class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :total_sms_count, default: 0, null: false
      t.integer :sms_pending_count, default: 0, null: false
      t.integer :sms_delivered_count, default: 0, null: false
      t.integer :sms_failed_count, default: 0, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
