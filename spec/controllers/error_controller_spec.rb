require 'rails_helper'

RSpec.describe ErrorController, type: :controller do

  describe "GET #not_found" do
    it "returns http success" do
      get :not_found
      expect(response).to have_http_status(:success)
    end
  end

end
