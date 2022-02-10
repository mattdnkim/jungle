class User < ActiveRecord::Base
  validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true, confirmation: { case_sensitive: false }
    validates :password_digest, presence: true, length: { minimum: 3 }
    validates :password_confirmation, presence: true, length: { minimum: 3 }

    .authenticate_with_credentials email, password
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
      end

    has_secure_password
  
  end

  