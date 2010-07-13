module ATM
  def self.withdraw(amount)
    amount = amount.to_i
    header = "For $ #{amount}:\n"
    body = amount.in_bills.map { |size, bills| "  #{bills} * $ #{'%3d' % size}" }.join("\n")
    header << body << "\n"
  rescue
    "Unable to withdraw $ #{amount}."
  end

  module Money
    AVAILABLE_BILLS = [100, 50, 20, 10, 5, 2].freeze

    def in_bills
      in_bills_of AVAILABLE_BILLS
    end

    def in_bills_of(bill_sizes)
      fail if bill_sizes.empty?

      smaller_bills = bill_sizes.reject {|size| size > self}
      bill_size = smaller_bills.shift

      changed_bills, remaining_cash = self.divmod bill_size
      cash = {bill_size => changed_bills}

      unless remaining_cash == 0
        begin
          cash.merge! remaining_cash.in_bills_of smaller_bills
        rescue
          cash = self.in_bills_of smaller_bills
        end
      end
      cash
    end
  end
end

Fixnum.send :include, ATM::Money