class User < ActiveRecord::Base
    has_many :restaurants, through: :joiner
    belongs_to :joiner
    
end