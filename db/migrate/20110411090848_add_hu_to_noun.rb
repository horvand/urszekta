class AddHuToNoun < ActiveRecord::Migration
  def self.up
    add_column :nouns, :hu, :string
  end

  def self.down
    remove_column :nouns, :hu
  end
end
