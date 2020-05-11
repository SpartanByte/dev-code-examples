# to broadcast after a comment has been saved (for example)
# example renders a partial for the comment
ActionCable.server.broadcast "comments", render(partial: "comments/comment", object: @comment)