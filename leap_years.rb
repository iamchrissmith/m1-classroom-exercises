# calculate next 25 leap years
# evenly divisible by 4
# not if divisible by 100
# is if divisible by 400

class LeapYear
  def check_div(year, by)
    year % by == 0
  end

  def calc(number)
    years = []
    current_year = Time.new.year
    until years.length == number
      if check_div(current_year, 4) && !(check_div(current_year,100) && !check_div(current_year, 400) )
        years << current_year
      end
      current_year += 1
    end
    years

  end
end

leapyear = LeapYear.new
puts leapyear.calc(25)
