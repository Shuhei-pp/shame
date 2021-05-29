class HomeController < ApplicationController
  def top
    @items = Write.all
  end

  def write
    @item = Write.new(item: params[:item_content])
    if @item.save
      flash[:notice]="データを登録しました"
    end
      redirect_to("/home/top")
  end

  def delete
    del = Write.find(params[:id])
    del.destroy
    flash[:notice]="データを削除しました"
    redirect_to("/home/top")
  end

end
