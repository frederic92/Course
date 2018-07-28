class Project < ApplicationRecord

  serialize :users, Array
  enum status: { pending: 0, published: 1}

  belongs_to :user

  validates :name, presence: true
  validates :headline, presence: true
  validates :user_id, presence: true
  validates :description, presence: true

end
