class Post < ApplicationRecord

  validates :title, presence: true, length: { minimum: 5, maximum: 100}
  validates :description, presence: true, length: { minimum: 5, maximum: 300}
  validates :keywords, presence: true, length: { minimum: 5, maximum: 100}
  validates :user, presence: true


  has_many_attached :images
  has_many :likes 
  belongs_to :user
  has_many :comments

   before_create :generate_random_id

  private

  def generate_random_id
    self.id = SecureRandom.uuid if id.blank?
  end
end
