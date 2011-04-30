class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :name
      t.string :status
      t.string :assigned_to
      t.string :requested_by
      t.integer :deadline
      t.string :client
      t.string :description
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
