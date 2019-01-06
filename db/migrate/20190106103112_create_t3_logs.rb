class CreateT3Logs < ActiveRecord::Migration[5.2]
  def change
    create_table :t3_logs, primary_key: [:company_guid, :created_at, :uuid] do |t|
      t.string :uuid
      t.string :company_guid
      t.datetime :created_at, limit: 6
      t.datetime :event_at, limit: 6
      t.string :name1
      t.string :name2
      t.string :name3
      t.json :documents
    end
    add_index :t3_logs, :created_at
    add_index :t3_logs, :event_at
    add_index :t3_logs, :name1
    add_index :t3_logs, :name2
    add_index :t3_logs, :name3
    execute <<~EOS
      ALTER TABLE t3_logs PARTITION BY RANGE( YEAR(created_at) )(
        PARTITION p2017 VALUES LESS THAN (2018),
        PARTITION p2018 VALUES LESS THAN (2019),
        PARTITION p2019 VALUES LESS THAN (2020),
        PARTITION p202x VALUES LESS THAN (MAXVALUE)
      );
    EOS
  end
end
