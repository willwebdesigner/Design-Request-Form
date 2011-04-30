class DateAgain < ActiveRecord::Migration
  def self.up
    change_column("documents", "deadline", :date)
  end

  def self.down
    change_column("documents", "deadline", :datetime)
  end
end
