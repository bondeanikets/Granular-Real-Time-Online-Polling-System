require 'rails_helper'


describe UsersController do
    describe 'Signup as an admin' do
        before :each do 
          @movie = FactoryGirl.create(:user, :name => "Richard", :email => "richarddoss0719@tamu.edu", :password => "123456") 
          @another_lucas_movie = FactoryGirl.create(:user, :name => "Nithinthehero", :email => "talk_to_nithin@tamu.edu", :password => "qwerty")
          @moviestwo=[@movie, @another_lucas_movie]
        end
        it 'calls the model method that performs shows the admin profile' do
            get  :show, :id =>1
        end
        it 'selects the show template for  rendering' do
          get :show, :id => 1
          expect(response).to render_template('show')
        end
        #it 'makes the similar search results available to that template' do
         # get :similar, :id => 1
          #expect(response).to render_template('similar')
          #expect(assigns(:movies)).to eq(@moviestwo)
      #end
    end


end