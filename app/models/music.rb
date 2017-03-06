class Music < ActiveRecord::Base
  belongs_to :band
  
  validates :title, :author, presence: true
end
