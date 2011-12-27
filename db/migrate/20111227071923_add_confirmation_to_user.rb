class AddConfirmationToUser < ActiveRecord::Migration
  def self.up
	  change_table :users do |u|
      u.confirmable
    end
  end

  def self.down
  	remove_column :users, [:confirmed_at, :confirmation_token, :confirmation_sent_at]
  end
end
