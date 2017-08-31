class Project < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :votes, dependent: :destroy
end
