class RemoveIdFromFollowings < ActiveRecord::Migration
  def self.up
  	remove_column :followings, :id
  end

  def self.down
  	all_column :followings, :id, :integre
  end
end
