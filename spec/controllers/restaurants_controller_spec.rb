require 'spec_helper'

describe RestaurantsController do
	describe "GET #index" do

		it "should respond successfully" do
			get :index
			response.status.should eq 200
		end
		it "should render the index template" do
			get :index
			response.should render_template :index
		end
		it "should show all restaurants" do
			restaurant1 = FactoryGirl.create (:restaurant)
			restaurant2 = FactoryGirl.create (:restaurant)
			get :index
			expect(assigns(:restaurants)).to eq([restaurant1, restaurant2])
		end
	end

	describe "GET #new" do
		it "should create a new restaurant" do
			get :new
			response.status.should eq 200
		end
		it "should render a template" do
			get :new
			response.should render_template :new
		end

	end

end
