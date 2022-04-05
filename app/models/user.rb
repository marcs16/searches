class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }

  def self.users_find_name(search)
    search_size  = search.size
    val = 0
    same_name_users = []
    if (search_size > 0 && search_size < 2)
      query= User.ransack(name_matches_all: search)
    elsif (search_size = 2 && search_size < 3)
      query= User.ransack(name_matches_all: search)
    else
      if User.ransack(name_eq: search).result.size > 0
        query= User.ransack(name_eq: search)
      else
        query= User.ransack(name_start_all: search)
      end

    end
   
    query
    
  end
end
