require 'rails_helper'

RSpec.describe SalaryCalculator do
  it "calculates salary for India" do
    emp = Employee.new(country: "India", salary: 1000)
    result = described_class.call(emp)

    expect(result[:net_salary]).to eq(900)
  end
end