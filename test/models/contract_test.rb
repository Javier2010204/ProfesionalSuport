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
require 'test_helper'

class ContractTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
