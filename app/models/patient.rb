class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
end

# phy = Physician.find(4)
# pat = Patient.find(2)
# pat.physicians.create(name: "New Physician")
# pat.appointments.create(physician_id: phy.id ,appointment_date: Date.today)
