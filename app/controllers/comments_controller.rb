class CommentsController < ApplicationController


  def create
    comment = Comment.new

    comment.author_id = session["user_id"]
    comment.photo_id = params.fetch("input_photo_id")
    comment.body = params.fetch("input_body")

    comment.save

    redirect_to("/photos/#{comment.photo_id}")
  end


end
