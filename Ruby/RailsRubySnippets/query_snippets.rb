## QUERY SNIPPETS

#including an association
@blog = Blog.includes(:comments).find(params[:id])
