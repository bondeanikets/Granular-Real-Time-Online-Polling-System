require 'rails_helper'


describe SessionsController do
    describe 'Login as an admin' do
        before :each do 
          @movie = FactoryGirl.create(:user, :name => "Richard", :email => "richarddoss0719@tamu.edu", :password => "123456") 
          @another_lucas_movie = FactoryGirl.create(:user, :name => "Nithinthehero", :email => "talk_to_nithin@tamu.edu", :password => "qwerty")
          @moviestwo=[@movie, @another_lucas_movie]
        end
        it 'calls the model method that logs in the user' do
            print("Testing")
            post  :create, {:session => {:password =>"123456", :email =>"richard@eample.org"}, :danger =>1}
        end
        it 'calls the model method that logs out the user' do
            delete  :destroy
        end
        it 'selects the login template for  rendering' do
          post :create
          expect(response).to render_template('new')
        end
        #it 'makes the similar search results available to that template' do
         # get :similar, :id => 1
          #expect(response).to render_template('similar')
          #expect(assigns(:movies)).to eq(@moviestwo)
      #end
    end


end