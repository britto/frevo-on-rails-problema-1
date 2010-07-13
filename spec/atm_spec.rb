require 'spec_helper'

describe ATM, "#withdraw" do
  it "prints the cash breakdown for a given amount" do
    ATM.withdraw(156).should == <<-MONEY
For $ 156:
  1 * $ 100
  1 * $  50
  3 * $   2
MONEY
  end

  it "complains about invalid withdrawal amounts" do
    ATM.withdraw(53).should == "Unable to dispense $ 53."
  end

  it "accepts strings" do
    ATM.withdraw('248').should == <<-MONEY
For $ 248:
  2 * $ 100
  2 * $  20
  4 * $   2
MONEY
  end
end

describe Fixnum, ".in_bills" do
  context "a single bill" do
    it_cashes 2, {2 => 1}
    it_cashes 5, {5 => 1}
    it_cashes 10, {10 => 1}
    it_cashes 20, {20 => 1}

    context "repeated" do
      it_cashes 4, {2 => 2}
      it_cashes 6, {2 => 3}
      it_cashes 8, {2 => 4}
    end
  end

  context "multiple bills" do
    it_cashes 7, {2 => 1, 5 => 1}
    it_cashes 9, {2 => 2, 5 => 1}
    it_cashes 12, {2 => 1, 10 => 1}
    it_cashes 14, {2 => 2, 10 => 1}
    it_cashes 15, {5 => 1, 10 => 1}
    it_cashes 16, {2 => 3, 10 => 1}
    it_cashes 17, {2 => 1, 5 =>1, 10 => 1}
    it_cashes 18, {2 => 4, 10 => 1}
    it_cashes 19, {2 => 2, 5 =>1, 10 => 1}
    it_cashes 77, {2 => 1, 5 =>1, 20 => 1, 50 => 1}
    it_cashes 117, {2 => 1, 5 =>1, 10 => 1, 100 => 1}
  end

  context "amounts ending in 1 or 3" do
    it "fails" do
      [1, 3, 11, 13, 21, 23]. each do |x|
        expect { x.in_bills }.to raise_error
      end
    end
  end
end