class CreateExperiments < ActiveRecord::Migration
  def self.up
    create_table :experiments, :force => true do |t|
      t.string   "name"
      t.integer  "participants", :default => 0
      t.integer  "conversions",  :default => 0
      t.text     "experiment"

      t.timestamps
    end

    add_index :experiments, :name

  end

  def self.down
    drop_table :experiments
  end
end