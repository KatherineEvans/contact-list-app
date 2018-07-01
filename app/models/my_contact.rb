class MyContact < ApplicationRecord

  def friendly_updated_at
    created_at.strftime("%B %e, %Y")
  end

  def full_name
    full_name = "#{first_name} #{last_name}"
  end

  def japan_phone
    japan_phone = "+81 #{phone_number}"
  end

end
