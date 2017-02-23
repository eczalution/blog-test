require "rails_helper"

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it "responds successfully with an HTTP 200 status code" do #it { is_expected.to have_http_status(200) } ????
  get :index
  expect(response).to be_success
  expect(response).to have_http_status(200)
    end
  end

  describe 'GET #index' do
  subject { get :index }
  it { is_expected.to render_template(:index) }
  end
end
