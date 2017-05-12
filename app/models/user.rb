class User < ApplicationRecord
  has_and_belongs_to_many :roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def admin?
    current_user = User.find_by[:id]
    current_user.roles.include?(Role.find_by(name: 'ADMIN'))
  end
end
