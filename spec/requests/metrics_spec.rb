require 'rails_helper'

RSpec.describe "Metrics API", type: :request do
  it "returns country metrics" do
    get "/metrics/country?country=India"
    expect(response).to have_http_status(:ok)
  end
end