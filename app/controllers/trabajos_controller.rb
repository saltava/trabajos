class TrabajosController < ApplicationController
  def index
    @trabajos = Trabajo.all
  end
end
