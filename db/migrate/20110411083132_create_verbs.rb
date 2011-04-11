class CreateVerbs < ActiveRecord::Migration
  def self.up
    create_table :verbs do |t|
      t.string :inf
      t.string :presens
      t.string :imp
      t.string :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :verbs
  end
end
