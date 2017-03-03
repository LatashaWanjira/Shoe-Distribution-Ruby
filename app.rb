require("sinatra/activerecord")
require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*")
require("./lib/brand")
require("./lib/store")
require("pg")

get('/') do
  erb(:index)
end

get('/stores/new') do
  erb(:store_form)
end

# post('/stores') do
#   erb(:success)
# end

get('/stores') do
  @stores = Store.all()
  erb(:stores)
end

# get('/store') do
#   erb(:store)
# end

get('/brands') do
  @brands = Brand.all()
  erb(:brands)
end

get('/brands/new') do
  erb(:brand_form)
end

# post('/brands') do
#   erb(:success)
# end

# get('/brand') do
#   erb(:brand)
# end
