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
			redirect_to user_snippet_path[:user_id], flash: {success: "Thanks for Contributing"}
		else
			render :new
		end
	end

	def attempt_recreate
		if params[:code].present? && Snippet.where(code: params[:code]).first
			flash[:notice] = "Snippet already exists"
		else
			flash[:notice] = "Snippet can't be blank"
			redirect_to new_snippet_path
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
		redirect_to snippets_path
		if @snippet.save
			redirect_to snippet_path(@snippet), notice: "Updated"
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
