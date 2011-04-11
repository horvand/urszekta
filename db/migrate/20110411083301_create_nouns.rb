class CreateNouns < ActiveRecord::Migration
  def self.up
    create_table :nouns do |t|
      t.string :oart
      t.string :word
      t.string :def
      t.string :pl
      t.string :defpl
      t.string :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :nouns
  end
end
