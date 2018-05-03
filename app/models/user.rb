class User < ActiveRecord::Base
#ActiveRecord::Base.establish_connection("#{Rails.env}_users".to_sym).connection
#establish_connection "#{Rails.env}_users".to_sym

#acts_as_paranoid
#belongs_to :admin
validates :name, uniqueness: true,:presence => { :message => " cannot be blank" }
validates :password, length: { in: 6..20 }, confirmation: true, :presence => { :message => " cannot be blank" }
#validates :password_confirmation,length: { in: 6..20 }, :presence => { :message => " cannot be blank" }
validates :role, :presence => true
#validates :name, :password, :password_confirmation, presence: true
#enum role:{ Admin: 0, Factory: 1, Operator: 2}
# enum branch_id:{Ganapathy: 1, Eachanari: 2}
# before_save :encrypt_password
#  def encrypt_password
  # password = "abc-facebook" if password.blank?
#    self.password = Digest::MD5.hexdigest(password)
#  end

 #def self.authenticate(email, password)
 #  @user=User.where(:name=>name, :password=> Digest::MD5.hexdigest(password))
 #  @user ? @user:nil
 # end

end

