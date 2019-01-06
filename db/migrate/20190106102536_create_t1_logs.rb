class CreateT1Logs < ActiveRecord::Migration[5.2]
  def change
    create_table :t1_logs, primary_key: [:uuid] do |t|
      t.string :uuid
      t.string :company_guid
      t.datetime :created_at, limit: 6
      t.datetime :event_at, limit: 6
      t.string :name1
      t.string :name2
      t.string :name3
      t.json :documents
    end
    add_index :t1_logs, :company_guid
    add_index :t1_logs, :created_at
    add_index :t1_logs, :event_at
    add_index :t1_logs, :name1
    add_index :t1_logs, :name2
    add_index :t1_logs, :name3
  end
end
