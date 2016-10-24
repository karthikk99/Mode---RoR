class UserController < ApplicationController

include Database

  @@a, @@b, @@c, @@d, @@e = ""

  def index
  end

  def write

	  @@a = params['host']
	  @@b = params['username']
	  @@c = params['password']
	  @@d = params['dbname'] 
	  @@e = params['port']
	  	  
  end

  def execute

	  sql_query = params['body']
	  @results = Database.establish_connection(@@a, @@b, @@c, @@d, @@e, sql_query)
          @header = Database.get_header
          @count = Database.get_rowcount
	  
          

  end

end
