class OthersController < ApplicationController
    before_action :authenticate_user!
    def index
        memorandums = Memorandum.where(private: false)
        @memorandums = memorandums.order(id: "desc").limit(50)
    end

end