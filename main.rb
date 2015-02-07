require 'sinatra'

get '/' do 
	erb :home
end

get '/new' do
	# stm = db.prepare "SELECT * FROM books ORDER BY timestamp DESC LIMIT 5;"
    # rs = stm.execute

    # string = Array.new
    # string << 'List all books'
    # rs.each do |row|
    #     string << (row.join "\s")
    # end

    @title = 'Asche und Phoenix'
    @author = 'Kai Meyer'
    @year = 2012
    @publisher = 'Carlsen'

	erb :new
end

get '/popular' do
	erb :popular
end

get '/search' do
	erb :search
end

get '/lent' do
	erb :lent
end
