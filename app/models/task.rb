class Task < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :content, presence: true
end
