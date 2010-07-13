require 'atm'

module FixnumMacros
  def it_cashes(amount, cash)
    specify "#{amount} cashes to #{cash}" do
      amount.in_bills.should == cash
    end
  end
end

RSpec.configure do |config|
  config.extend FixnumMacros
end