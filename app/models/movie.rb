class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: { message: "Title can't be blank" }, uniqueness: { message: "Title must be unique" }
  validates :overview, presence: { message: "Overview can't be blank" }
end
