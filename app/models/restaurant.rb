class Restaurant < ActiveRecord::Base
    belongs_to :joiner
    has_many :users, through: :joiner   
end