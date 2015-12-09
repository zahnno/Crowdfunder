class CommentsController < ApplicationController
	before_filter :ensure_logged_in, only: [:create, :destroy]
	before_filter :load_project

def create

    @comment = @project.comments.build(comment_params)
    @comment.user = current_user
end

def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
end



private
	
	def comment_params
			params.require(:comment).permit(:text, :project_id)
	end

	def load_project
    		@project = Project.find(params[:project_id])
    end

end
