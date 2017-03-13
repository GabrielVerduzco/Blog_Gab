require "rails_helper"



RSpec.describe ArticlesController, type: :controller do
  it { should use_before_action(:authenticate_user!) }
  it { should_not use_before_action(:prevent_ssl) }

  #let(:articles) { FactoryGirl.create(:user)  }


  let(:articles) {Article.all}

  let(:user) { FactoryGirl.create(:user)  }



  describe 'GET index' do
    before { get :index }

    it "is a succes" do

      expect(response).to have_http_status(:ok)

    end

    it "renders 'index' template" do
      expect(response).to render_template('index')

    end

    it "assaign all articles to @articles" do

      expect(assigns(:articles)).to eq(articles)
    end
  end

  describe "GET 'show'" do
    #before { get :show }


    #it "assigns @post" do
      #user.save
      #binding.pry
      #expect(assigns(:post)).to eq(articles)
    #end

    #it "renders the show template" do
      #expect(response).to render_template("show")
    #end
  end



end

