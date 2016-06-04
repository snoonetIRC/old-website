require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #root" do
    it "returns http success" do
      get :root
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(:success)
    end
  end

end
