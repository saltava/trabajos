class TrabajosController < ApplicationController
  def index
    @trabajos = Trabajo.all
  end

  def show
    @trabajo = Trabajo.find(params[:id])
  end

  def new
    @trabajo = Trabajo.new
  end

  def edit
    @trabajo = Trabajo.find(params[:id])
  end

  def create
    @trabajo = Trabajo.new(params[:trabajo])

    if @trabajo.save
      redirect_to(@trabajo, :notice => 'Trabajo creado')
    else
      render :action => "new"
    end
  end

  def update
   @trabajo = Trabajo.find(params[:id])

    if @trabajo.update_attributes(params[:trabajo])
      redirect_to(@trabajo, :notice => 'Trabajo was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @trabajo = Trabajo.find(params[:id])
    @trabajo.destroy
    redirect_to @trabajo
  end
end
