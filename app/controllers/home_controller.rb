class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
        randoms = current_user.memorandums
        @random = randoms.sample
    end

end
