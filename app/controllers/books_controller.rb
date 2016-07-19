class BooksController < ApplicationController
	def index
	end

	def new
	end

	def create
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def find_id
		@book=Books.find(params[:id])
	end
	def books_params
	end
end
