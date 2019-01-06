class CreateT1Logs < ActiveRecord::Migration[5.2]
  def change
    create_table :t1_logs do |t|
      t.string :uuid
      t.string :company_guid
      t.datetime :created_at
      t.datetime :event_at
      t.string :name1
      t.string :name2
      t.string :name3
      t.json :documents

      t.timestamps
    end
    add_index :t1_logs, :name1
    add_index :t1_logs, :name2
    add_index :t1_logs, :name3
  end
end
