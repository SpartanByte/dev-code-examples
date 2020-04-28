## COMMAND LINE GENERATORS, NOT ACTUALLY RAN IN .rb FILES

#Resource generator (without views), attribute:value, belonging to user and blogs
#Creates migration, model, controller, helper, resource route
rails g resource Post content:text user:references blog:references

#Controller generator (with index and show views)(also creates helper method, assets)
rails g controller Categories index show

#Model generator (also creates migration)
rails g model category name:string something_else:string
