class CreateTableFollowings < ActiveRecord::Migration
  def self.up
  	create_table :followings do |t|
  		t.integer :master
  		t.integer :follower
  	end
  end

  def self.down
  	drop_table :followings
  end
end
