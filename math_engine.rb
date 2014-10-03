# sinatra math engine
# get and post accept params in the same way in sinatra so this answer applies for both.

# require 'json'

get '/nums' do
  arr = JSON.parse(params["values"])["values"]
  sum = arr.inject(:+)
  product = arr.inject(:*)
  return { "sum": sum, "product":product }.to_json
end
