class Task < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true,
                      length: { minimum: 6 }
    validates :description, presence: true,
                      length: { minimum: 6 }
    validates :duration, presence: true,
                            :numericality => { :greater_than => 0}
    validates :idate, presence: true
    validates :fdate, presence: true
    validates :user_id, presence: true
end
