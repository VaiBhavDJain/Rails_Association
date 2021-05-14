class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end

# Polymorphic Association

# Model :- Employee,Product -- Picture