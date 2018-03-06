class CreateAuditlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :auditlogs do |t|
      t.references :user, foreign_key: true
      t.integer :status, default: 0 
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
