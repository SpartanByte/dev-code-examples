## CONTROLER SNIPPETS

# flash message example
flash[:success] = "Category has been added"

# strong parameters, first is called 'top key'
params.require(:category).permit(:name, :some_column)