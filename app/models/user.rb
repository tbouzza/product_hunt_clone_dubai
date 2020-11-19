class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # def initialize(attr = {})
  #   @fist_name = fist_name
  # end

  def full_name
    return "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
