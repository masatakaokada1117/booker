class Studio < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  has_many :rooms, dependent: :destroy

  validates :name, presence: true
  validates :prefecture_id, presence: true
end
