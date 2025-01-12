class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: { message: "Name can't be blank" }, uniqueness: { message: "Name must be unique"}
end
