class CommentsController < ApplicationController

    def create
        user = User.find_by(username: comment_params[:user])
        comment = Comment.new(event_id: comment_params[:event_id], content: comment_params[:content])
        comment[:user_id] = user.id
        comment.save
        render json: comment
    end


    private 

    def comment_params
        params.require(:comment).permit(:event_id, :user, :content)
    end

end