class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: {minimum: 5}

  validates_datetime :date_start, :on_or_before => lambda { Date.current }

end
