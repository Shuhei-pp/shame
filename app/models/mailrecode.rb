class Mailrecode < ApplicationRecord
  validates :teacher, presence: true
  validates :lesson_name, presence: true
end
