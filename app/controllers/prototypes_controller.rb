class PrototypesController < ApplicationController
  before_action :move_to_index, except:[:index, :new, :show, :create, :edit, :update, :destroy]

  def index
    @user = User.all
    @prototypes = Prototype.all
  end

  def new
    @user = User.new
    @prototype = Prototype.new
  end

  def show
     @prototype = Prototype.find(params[:id])
     @comment = Comment.new
     @comments = @prototype.comments
  end

  def create
    @prototype = Prototype.new(set_prototype)
    if @prototype.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    prototype = Prototype.find(params[:id])
    prototype.update(set_prototype)
    redirect_to prototype_path
  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :proffile, :occupation).merge(user_id: current_user.id)
  end

  def set_prototype
    params.require(:prototype).permit(:title, :image, :catch_copy, :concept).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
