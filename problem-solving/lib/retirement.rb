class Retirement
  def calculate(age, retirement_age)
    if age < 0
      return "Error. Age cannot be negative."
    elsif retirement_age < 0
      return "Error. Retirement age cannot be negative."
    end

    years_left = retirement_age - age
    current_year = Time.now.year
    retirement_year = current_year + years_left

    "You have #{years_left} years left until you can retire. It is #{current_year}, so you can retire in #{retirement_year}."
  end
end