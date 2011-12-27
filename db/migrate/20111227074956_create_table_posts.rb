class CreateTablePosts < ActiveRecord::Migration
  def self.up
  	create_table :posts do |t|
  		t.integer :user_id
  		t.string :text
  		t.integer :group_id
  		t.timestamps
  	end
  end

  def self.down
  	drop_table :posts
  end
end
