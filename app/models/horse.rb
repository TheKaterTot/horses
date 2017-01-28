class Horse < ActiveRecord::Base
  belongs_to :jockey
  belongs_to :breed
  validates :name, presence: true

  def self.total_winnings
    all.reduce(0) do |total, horse|
      total += horse.total_winnings
    end
  end

  def self.average_winnings
    total_winnings/horses.count
  end
end
