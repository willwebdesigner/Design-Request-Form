class User < ActiveRecord::Migration
  def self.up
    add_column("users", "email", :string)
    add_column("users", "salt", :string, :limit => 40)
    add_column("users", "username", :string)
    add_index("users", "username")
  end

  def self.down
    remove_index("users", "username")
    remove_column("users", "username")
    remove_column("users", "salt")
    remove_column("users", "email")
  end
end
