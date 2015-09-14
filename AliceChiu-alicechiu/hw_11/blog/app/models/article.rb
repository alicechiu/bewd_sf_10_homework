class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5}
  validates :date, presence:true,
                    date: {on_or_after: 1920}
end
