# == Schema Information
#
# Table name: team_memberships
#
#  id                 :integer          not null, primary key
#  team_id            :integer          not null
#  user_id            :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  default_channel_id :integer          not null
#

require 'test_helper'

class TeamMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
