class User < ActiveRecord::Base
    has_many :posts
    has_many :comments
    has_many :likes
    
    validates_presence_of    :email, :avatar_url, :password, :username
    validates_uniqueness_of  :email, :password
end