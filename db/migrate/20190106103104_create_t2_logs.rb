class CreateT2Logs < ActiveRecord::Migration[5.2]
  def change
    create_table :t2_logs do |t|
      t.string :uuid
      t.string :company_guid
      t.datetime :created_at, limit: 6
      t.datetime :event_at, limit: 6
      t.string :name1
      t.string :name2
      t.string :name3
      t.json :documents
    end
    add_index :t2_logs, :name1
    add_index :t2_logs, :name2
    add_index :t2_logs, :name3
  end
end
