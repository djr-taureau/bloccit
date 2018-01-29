class FavoriteMailer < ApplicationMailer
<<<<<<< HEAD

=======
  
>>>>>>> checkpoint-30
  def new_comment (user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@dry-brushlands-84617.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@dry-brushlands-84617.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@dry-brushlands-84617.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
