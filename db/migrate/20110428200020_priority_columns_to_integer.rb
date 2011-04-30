class PriorityColumnsToInteger < ActiveRecord::Migration
  def self.up
    change_column("documents", "status", :integer)
  end

  def self.down
    change_column("documents", "status", :date)
  end
end
