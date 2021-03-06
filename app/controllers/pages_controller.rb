class PagesController < ApplicationController
	class PagesController < ApplicationController
	def index
		@blogposts = Blogpost.all
	end

	def show
		@blogpost = Blogpost.find(params[:id])
	end

	def new
		@blogpost = Blogpost.new
	end

	def create
		@blogpost = Blogpost.new(blogpost_params)

		if @blogpost.save
			redirect_to @blogpost
		else
			render :new
		end
	end

	private
	def blogpost_params
		params.require(:blogpost).permit(:title, :body)
	end
end

end
