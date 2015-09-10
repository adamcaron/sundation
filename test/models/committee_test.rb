require "./test/test_helper"

class CommitteeTest < ActiveSupport::TestCase
  test "#where" do
    VCR.use_cassette('') do
      committees = Committee.where(chamber: "senate")
      committee  = committees.first

      assert_equal 20, committees.count
      assert_equal Committee, committee.class
      assert_equal 'Regulatory Affairs and Federal Management', committee.name
    end
  end
end