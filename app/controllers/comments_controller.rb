class CommentsController < ApplicationController

    def create
        user = User.find_by(username: comment_params[:user])
        comment = Comment.new(event_id: comment_params[:event_id], content: comment_params[:content])
        comment[:user_id] = user.id
        comment.save
        commentObj = {
            content: comment.content,
            user: comment.user.username
        }
        render json: commentObj
    end

    def get_event_comments
        event = Event.find_by(id: params[:id])
        eventComments = event.comments
        comments = []
        eventComments.each do |comment|  
            commentHash = { content: comment[:content], user: comment.user.username}
            comments.push(commentHash)
        end
        render json: { comments: comments }
    end


    private 

    def comment_params
        params.require(:comment).permit(:event_id, :user, :content)
    end

end