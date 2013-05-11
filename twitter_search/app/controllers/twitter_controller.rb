class TwitterController < ApplicationController
require 'twitter_search'
def search
	if params[:twitter]
		@search_term = params[:twitter]
		client = TwitterSearch::Client.new('twitter_search')	# Initialize your Twitter client	
		@tweets = client.query(:q => "#{params[:twitter]}", :rpp => 25)# query the API for 25 results for the search term
	end
end
end
