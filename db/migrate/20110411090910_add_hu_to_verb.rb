class AddHuToVerb < ActiveRecord::Migration
  def self.up
    add_column :verbs, :hu, :string
  end

  def self.down
    remove_column :verbs, :hu
  end
end
