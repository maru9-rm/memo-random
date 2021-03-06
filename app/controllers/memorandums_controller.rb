class MemorandumsController < ApplicationController
    before_action :authenticate_user!
    def index
        @memorandums = current_user.memorandums
    end


    def show
        randoms = current_user.memorandums
        @random = randoms.sample
        render json: @random
    end

    def new
        @memorandum = current_user.memorandums.build
    end

    def create
        @memorandum = current_user.memorandums.build(memorandum_params)
        if @memorandum.save
            redirect_to root_path ,notice: '登録完了'
        else
            flash.now[:error] = '失敗しました'
            render :new
        end
    end

    def edit
        @memorandum = current_user.memorandums.find(params[:id])
    end

    def update
        @memorandum = current_user.memorandums.find(params[:id])
        if @memorandum.update(memorandum_params)
            redirect_to root_path, notice: '更新完了'
        else
            flash.now[:error] = '更新に失敗しました'
            render :edit
        end
    end

    def destroy
        memorandum = current_user.memorandums.find(params[:id])
        memorandum.destroy!
        redirect_to memorandums_path ,notice: '削除完了'
    end

    private
    def memorandum_params
        params.require(:memorandum).permit(:content, :tag, :source, :private)
    end
end
