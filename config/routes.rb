Rails.application.routes.draw do
  get '/simluator' => 'prices#simluator'
  get '/result' => 'prices#result'
end
