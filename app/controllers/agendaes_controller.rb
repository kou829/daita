class AgendaesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create] 

  def index
    @agenda = Agenda.all
  end

  def new 
    @agenda = Agenda.new
  end

  def create
    @agenda = Agenda.new(agenda_params)
    if @agenda.valid?
      @agenda.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def agenda_params
      params.require(:agenda).permit(:title, :catch_copy).merge(user_id: current_user.id)
    end

end
