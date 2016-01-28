class Doctor < ActiveRecord::Base
  validates_presence_of :doctors_name, :clinic_name, :clinic_address, :clinic_phone, :doctors_direct_phone
end
