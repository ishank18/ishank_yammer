class AddImageInPosts < ActiveRecord::Migration
  def self.up
  	change_table :posts do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
    end
  end

  def self.down
  	 drop_column :posts, :image_file_name
  	 drop_column :posts, :image_content_type
  	 drop_column :posts, :image_file_size
  end
end
