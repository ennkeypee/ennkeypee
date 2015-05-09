module Ennkeypee
  class Tennpipesframework < Tennpipes::Application
    register Tennpipes::Mailer
    register Tennpipes::Helpers

    enable :sessions

    class Ennkeypee::Tennpipesframework
      get '/' do
        erb :home
      end
    end






  end
end
