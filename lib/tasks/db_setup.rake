env = ENV['RAILS_ENV'] || 'developmetnt'
database_name = "album_#{env}"
print "env is #{env} database is #{database_name}\n"
user = "abmuser_#{env[0..0]}"
def connect 
	ActiveRecord::Base.establish_connection(
		:adapter => 'mysql',
		:username => 'root',
		:password => 'root',
		:database => 'mysql'
	)
end 
# => [:environment] is necessary 

#-------------task for creating user----------------
task :create_user=>[:environment] do

	#connect IS NECCESARY!!!!!!!!!!!!!!!!!
	connect
	ActiveRecord::Schema.define do
		#create_database database
		execute	"create user  #{user}@localhost identified by 'ror'"
	end
end

#------------task for dropping user-----------------
task :db_drop=>[:environment] do 
	ActiveRecord::Schema.define do
		connect
		drop_database database_name
	end
end


#------------task for setup database--------------------
task :db_setup=>[:environment] do
#task :db_setup do
	ActiveRecord::Schema.define do
		begin
			connect
		rescue
			print "error occured while connecting"
		end	
		begin 
			create_database database_name		
		rescue
			print "error occured while database creating !!"	
		end
	end
end

task :db_drop=>[:environment] do 
	ActiveRecord::Schema.define do
		connect
		drop_database database_name
	end
end


