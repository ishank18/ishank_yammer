# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
user = User.new(:email => 'admin@vinsol.com', :password => 'vinsol', :password_confirmation => 'vinsol', :is_admin => true)
user.skip_confirmation!
user.save!
