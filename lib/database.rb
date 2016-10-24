module Database

require 'mysql2'

@@results = nil

def self.establish_connection(host, uname, password, dbname, port, sql_query)
  
client = Mysql2::Client.new(:host => host, :username => uname, :password => password, :database => dbname, :port => port)

@@results = client.query(sql_query)

rescue Exception => e
ensure client.close
return @@results

end


def self.get_header
return @@results.fields
end

def self.get_rowcount
return @@results.count
end


end

