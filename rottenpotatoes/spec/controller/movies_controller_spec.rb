require 'rails_helper'

describe MoviesController , :type => :controller  do
    describe 'creates new movie' do
		it 'renders new-movie template' do
			get :new
			response.should render_template 'new'
		end
		it 'should call a model method to persist data' do
			movie = double('new movie').as_null_object
			Movie.should_receive(:create!).and_return(movie)

			post :create, {:movie => movie}
		end
		it 'it should render the home template' do
			movie = double('new movie').as_null_object
			Movie.stub(:create!).and_return(movie)

			post :create, {:movie => movie}
			response.should redirect_to(movies_path)
		end
    end

	describe 'deletes a movie that already exists' do
		it 'should render the edit movie template' do
			Movie.stub(:find)
			get :edit, {:id => 1}
			response.should render_template 'edit'
		end
		it 'should call a model method for updating data' do
			my_movie = double('a movie').as_null_object
			
			Movie.should_receive(:find).and_return(my_movie)
			my_movie.should_receive(:destroy)

			delete :destroy, {:id => 1}
		end
		
    end
end