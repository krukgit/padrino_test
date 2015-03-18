Padrino.configure_apps do
  set :exceptions_views, Padrino.root('app/views')
  set :exceptions_layout, :error
  set :exceptions_page, :errors
end

Padrino.mount('Myapp::App', :app_file => Padrino.root('app/app.rb')).to('/')

class Myapp::App < Padrino::Application
  register Padrino::Contrib::ExceptionNotifier
end
