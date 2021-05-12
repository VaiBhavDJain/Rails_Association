class AuthorController < ApplicationController

  def index
    @author =Author.all
    @book = Book.all
  end
    
  def show
    @author = Author.find(params[:id])

  end
    
  def new
    @author = Author.new 
  end
    
  def create
    @author= Author.new(author_params)
    if @author.save && @author.bhut_saari_books.create(book: book_params)    
       redirect_to @author
    else
        render('new')
    end
    
  end

  def book_create
    @author = Author.find(author_book_add)
    if @author.bhut_saari_books.create(book: book_params)    
      redirect_to @author
   else
       render('new')
   end
  end
    
  def edit
    @author = Author.find(params[:id])
  end
  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
        redirect_to(author_index_path)
    else
        render('edit')
    end
  end
    
  def delete
    @author = Author.find(params[:id])
  end
  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to(author_index_path)
  end

  private
  def author_params
    params.required(:author).permit(:name)
  end
  def book_params
    byebug
    params.required(:author).permit(:books)
  end
  def author_book_add
    params.required(:author_id)
  end
end
