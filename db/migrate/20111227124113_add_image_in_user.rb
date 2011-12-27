class AddImageInUser < ActiveRecord::Migration
 def self.up
  	change_table :users do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
    end
  end

  def self.down
  	 drop_column :users, :image_file_name
  	 drop_column :users, :image_content_type
  	 drop_column :users, :image_file_size
  end
end
