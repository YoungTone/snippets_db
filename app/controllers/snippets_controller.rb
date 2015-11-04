class SnippetsController < ApplicationController
	def index
		@snippets = Snippet.all
		render :index
	end

	def new
		@snippet = Snippet.new
	end

	def create
		@snippet = Snippet.new(snippet_params)
		if @snippet.save
			redirect_to user_snippet_path[:user_id], flash: {notice: "Thanks for contributing"}
		elsif params[:code].present? && Snippet.where(code: params[:code]).first
			flash[:notice] = "A snippet already exisits with your code"
		else
			flash[:notice] = "Snippet form can't be blank"
			render :new
		end
	end

	def show
		@snippet = Snippet.find params[:id]
	end

	def edit
		@snippet = Snippet.find params[:id]
	end

	def update
		@snippet = Snippet.find params[:id]
		@snippet.update snippet_params
		redirect_to snippets_path[:id]
		if @snippet.save
			redirect_to user_snippets_path[:user_id], notice: "Updated"
		else
			render :edit
		end
	end

	def destroy
		@snippet = Snippet.find_by_id params[:id]
		@snippet.destroy
		redirect_to snippets_path
	end

	private

	def snippet_params
		params.require(:snippet).permit(:name, :code, :description, :user_id, :language_id, :editor_id)
	end
end
