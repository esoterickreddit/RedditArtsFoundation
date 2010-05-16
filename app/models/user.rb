class User < ActiveRecord::Base
  validates_uniqueness_of :username
  def self.authenticate(username, password)
    user = User.find( :first,
                      :conditions => ['username = ?', username])
    if user.blank? || Digest::SHA2.hexdigest(password + user.password_salt) != user.password_hash
      raise "Username or password invalid"
    end
    user
  end
  def password=(pass)
    salt = [Array.new(6){rand(256).chr}.join].pack("m").chomp
    self.password_salt, self.password_hash = salt, Digest::SHA2.hexdigest(pass + salt)
  end
end
