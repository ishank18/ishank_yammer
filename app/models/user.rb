class User < ActiveRecord::Base
	
	
	has_and_belongs_to_many :followers, :class_name => "User", :join_table => :followings , :foreign_key => :follower, :association_foreign_key => :master
	
	has_attached_file :image, :styles => { :thumb=> "100x100#", :small  => "400x400>" }
	has_many :posts
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :is_admin
  
  def attempt_set_password(params)
		p = {}
		p[:password] = params[:password]
		p[:password_confirmation] = params[:password_confirmation]
		update_attributes(p)
	end
	
	# new function to return whether a password has been set
	def has_no_password?
		self.encrypted_password.blank?
	end

	# new function to provide access to protected method unless_confirmed
	def only_if_unconfirmed
		unless_confirmed {yield}
	end
	
	def password_required?
		# Password is required if it is being set, but not for new records
		if !persisted? 
		  false
		else
		  !password.nil? || !password_confirmation.nil?
		end
	end
	
	
	
	
	
	
	
	
	
end
