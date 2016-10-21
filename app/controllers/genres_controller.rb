class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end
  def create
    @genre = Genre.new(name: genre_params[:name])
    #genre and genre are probably find or create by 
    @genre.save
    redirect_to genre_path(@genre)
  end 

  def edit
    @genre = Genre.find(params[:id])
  end
  def update
    @genre = Genre.find(params[:id])
    @genre.update(name: genre_params[:name])
    @genre.save
    redirect_to genre_path(@genre)
  end
  
private 
  def genre_params
  params.require(:genre).permit(:name)
end 
end
