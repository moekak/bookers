class BooksController < ApplicationController
  def new
    @list = Book.new
    @lists = Book.all
  end
  def create
    @list = Book.new(lists_params)
    if @list.save
      redirect_to books_show_path(@list.id)
    else
      @lists =Book.all
      render :new
    end

  end

  def index
  end

  def show
    @list = Book.find(params[:id])

  end

  def edit
    @list = Book.find(params[:id])
  end

  def update
    list = Book.find(params[:id])
    list.update(lists_params)
    redirect_to books_show_path(list.id)
  end

  def destroy
    list = Book.find(params[:id])
    list.destroy
    redirect_to '/books'
  end



  private
  def lists_params
    params.require(:book).permit(:title, :body)
  end

end
