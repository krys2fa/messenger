class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :destination
      t.string :source
      t.text :content
      t.string :status, default: 'pending', null: false
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
