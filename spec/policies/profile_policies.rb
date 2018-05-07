class ProfilePolicy 
  attr_reader :user, :profile

  def initialize(user, email)
    @user = user
    @email = email
  end

end