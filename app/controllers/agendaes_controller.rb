class AgendaesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create] 
  before_action :set_agenda, only: :show

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

  def show
  end

  private
    def agenda_params
      params.require(:agenda).permit(:title, :catch_copy).merge(user_id: current_user.id)
    end

    def set_agenda
      @agenda = Agenda.find(params[:id])
    end

end
