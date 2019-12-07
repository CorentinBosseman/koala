class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friendships
  has_many :user_programs
  has_many :user_challenges

  has_many :challengers, foreign_key: :friend_id
  has_many :user_all_challenges, through: :challengers, source: :user_challenge

  mount_uploader :avatar, PhotoUploader

  validates :email, uniqueness: true
  validates :pseudo, uniqueness: true

  def friends
    relationships = Friendship.where("user_id = :id OR friend_id = :id", id: id).where(status: "Accepted")
    friend_ids    = relationships.map(&:user_id) + relationships.map(&:friend_id)
    User.where.not(id: id).where(id: friend_ids.uniq)
  end

  LEVELS = {
    # NUMBER : RANGE
    # beginner

    1 => 0...300,
    # one week
    2 => 300...600,
    # one month
    3 => 600...1000,
    # not so quick (4-5 month)
    4 => 1000...1500,
    # one year
    5 => 1500...2300,
    # one year and a half
    6 => 2300...3000,
    7 => 3000...4000,
    8 => 4000...5500,
    9 => 5500...7500,

    10 => 7500..Float::INFINITY
  }

  def self.level_from_points(points)
   LEVELS.find { |level, range| range.include?(points) }[0]
  end

  def next_level
    next_level = LEVELS.find { |level, range| range.include?(points) }[1]
    next_level.last
  end
end
