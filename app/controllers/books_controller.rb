class BooksController < ApplicationController
	before_action :find_id, only: [:show,:edit,:destroy,:update]
	def index
	end

	def new
		@book=Book.new
	end

	def create
		@book=Book.new(books_params)
		if(@book.save!)
			redirect_to @book
		else
			render "new"
		end
	end

	def show
	end

	def edit
	end

	def update
		if (@book.update!(books_params))
			redirect_to @book
		else
			render "edit" 
		end
	end

	def destroy
		@book.destroy
		redirect_to books_path
	end

	private
	def find_id
		@book=Books.find(params[:id])
	end
	def books_params
		params.require(:book).permit(params[:title,:author])
	end
end
