# == Schema Information
#
# Table name: contracts
#
#  id             :integer          not null, primary key
#  place          :string
#  name           :string
#  nacionality    :string
#  profession     :string
#  academy_degree :string
#  university     :string
#  departament    :string
#  dpi            :string
#  age            :integer
#  marital_status :string
#  email          :string
#  phone          :string
#  body           :text
#  confirmation   :boolean          default(TRUE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Contract < ApplicationRecord
    validates :place, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :name, presence: true
    validates :confirmation, presence: true
    validates :age, presence: true
    validates :dpi, presence: true
    validates :departament, presence: true
    validates :academy_degree, presence: true
    validates :nacionality, presence: true
    validates :university, presence: true

    after_create :send_mail

    def send_mail
        ContractMailer.new_contract_mail(self).deliver_now
    end
    
    
end
