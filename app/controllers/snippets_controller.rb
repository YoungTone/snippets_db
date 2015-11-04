class SnippetsController < ApplicationController
	def index
		@user = User.find params[:user_id]
		@snippets = @user.snippets
	end

	def new
		@user = User.find params[:user_id]
		@snippet = @user.snippets.new
		@languages = Language.all
		@editors = Editor.all
		# @user = User.first # this is only for tests
	end

	def create
		@user = User.find params[:user_id]
		@snippet = @user.snippets.new(snippet_params)
		if @snippet.save
			redirect_to user_snippets_path params[:user_id], flash: {notice: "Thanks for contributing"}
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
			flash[:notice] = "Edit Succesful"
			redirect_to user_snippets_path[:user_id]
		elsif params[:code].present? && Snippet.where(code: params[:code]).first
			flash[:notice] = "A snippet already exisits with your code"
		else
			flash[:notice] = "Snippet form can't be blank"
			render :edit
		end
	end

	def destroy
		@snippet = Snippet.find_by_id params[:id]
		@snippet.destroy
		redirect_to user_snippets_path[:user_id]
	end

	private

	def snippet_params
		params.require(:snippet).permit(:name, :code, :description, :user_id, :language_id, :editor_id)
	end
end
