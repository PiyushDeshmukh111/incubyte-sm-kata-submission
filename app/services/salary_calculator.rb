class SalaryCalculator
    def self.call(employee)
      gross = employee.salary.to_f
  
      tds =
        case employee.country
        when "India"
          gross * 0.10
        when "United States"
          gross * 0.12
        else
          0
        end
  
      { gross_salary: gross, tds: tds, net_salary: gross - tds }
    end
  end