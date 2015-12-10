class CommentsController < ApplicationController
	before_filter :ensure_logged_in, only: [:create, :destroy]
	before_filter :load_project



def create

    @comment = Comment.new(comment_params)    
    @comment.project_id = @project.id
    @comment.user = current_user


     respond_to do |format|

        if @comment.save
    	   
        	format.html{ redirect_to projects_path(@project.id), notice: "Thanks for your opinion! Comment created." }
    		format.js{}
    	else
    		format.html{ render "projects/show", alert: "Your comment could not be created, sucka!" }
    		format.js{}
    	end
    end
end


def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
end


private
	
	def comment_params
			params.require(:comment).permit(:text, :project_id, :user_id)
	end

	def load_project
    		@project = Project.find(params[:project_id])
    end

    end


