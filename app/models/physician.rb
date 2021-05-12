class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  accepts_nested_attributes_for :appointments
  accepts_nested_attributes_for :patients
end

# phy = Physician.find(4)
# pat = Patient.find(2)

# phy.patients.create(name: "New Patient")
# phy.appointments.create(patient_id: pat.id ,appointment_date: Date.today)
