class MyContact < ApplicationRecord
  validates :first_name, presence: true 
  validates :last_name, presence: true 
  validates :email, uniqueness: true
  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i

  belongs_to :user

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def japan_phone
    "+81 #{phone_number}"
  end



end
