class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :tasks
    validates :fname, presence: true,
                      length: { minimum: 6 }
    validates :lname, presence: true,
                      length: { minimum: 6 }
     validates :email, presence: true,
                    uniqueness: true
end
