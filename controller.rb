require('sinatra')
require('sinatra/contrib/all')
require('json')

require_relative('models/string__extensions')

get '/' do
  erb(:home)
end

get '/snake_to_pascal/:string' do
  @snake_string = params[:string]
  @pascal_string = params[:string].snake_to_pascal
  erb(:snake_to_pascal)
end

get '/address' do
  content_type(:json)

  response = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }

  formatted_postcode = response[:postcode].upcase
  response[:postcode] = formatted_postcode
  return response.to_json
end
