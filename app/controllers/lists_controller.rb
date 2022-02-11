class ListsController < ApplicationController
  def new
  #Viewへ渡すためのインスタンス変数にからのModelオブジェクトを生成する。
   @list = List.new
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    list = List.new(lists_params)

    list.save

    redirect_to list_path(list.id)
  end

  private

  def lists_params
    params.require(:list).permit(:title, :body)
  end
end