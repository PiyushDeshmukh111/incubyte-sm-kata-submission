require 'rails_helper'

RSpec.describe Employee, type: :model do
  it "is invalid without full_name" do
    expect(Employee.new(full_name: nil)).not_to be_valid
  end

  it "is invalid without job_title" do
    expect(Employee.new(job_title: nil)).not_to be_valid
  end

  it "is invalid without country" do
    expect(Employee.new(country: nil)).not_to be_valid
  end

  it "is invalid with negative salary" do
    expect(Employee.new(salary: -10)).not_to be_valid
  end
end