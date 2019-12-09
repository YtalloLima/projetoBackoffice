class Admin < ApplicationRecord
  enum role: [:full_access, :restricted_access]

  validates :password, confirmation: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def role_br
	   if self.role == 'full_access'
	   	 'Acesso Completo'
	   else
	   	 'Acesso Restrito'
	   end       	
  end       
end
