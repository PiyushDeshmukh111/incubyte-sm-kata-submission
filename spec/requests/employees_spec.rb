require 'rails_helper'

RSpec.describe "Employees API", type: :request do
  let(:params) do
    {
      employee: {
        full_name: "John Doe",
        job_title: "Engineer",
        country: "India",
        salary: 50000
      }
    }
  end

  let(:headers) do
    {
      "CONTENT_TYPE" => "application/json",
      "ACCEPT" => "application/json"
    }
  end

  it "creates employee" do
    post "/employees", params: params.to_json, headers: headers
    expect(response).to have_http_status(:created)
  end

  it "fetches employees" do
    get "/employees", headers: headers
    expect(response).to have_http_status(:ok)
  end
end