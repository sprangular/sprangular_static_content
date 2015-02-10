Sprangular::Engine.routes.draw do
  scope module: 'sprangular' do
    scope '/api', defaults: {format: :json} do
      resources :pages, only: :show
    end
  end
end
