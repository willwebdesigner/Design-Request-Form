class ChangeDateColumn < ActiveRecord::Migration
  def self.up
    change_column("documents", "deadline", :datetime)
  end

  def self.down
    change_column("documents", "deadline", :integer)
  end
end
