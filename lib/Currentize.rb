# require "./Currentize/version.rb"

module Currentize
  def self.format(number, currency = "$")
    arr = number.to_s.split("").reverse
    currentized = ""
    arr.each_with_index do |n, idx|
      if idx % 3 == 0 && idx > 0
        currentized << ","
        currentized << n
      else
        currentized << n
      end
    end
    currency + currentized.reverse
  end
end