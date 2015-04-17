class NotesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_note, only: [:update, :edit, :show]

  def index
  end

  def new 
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :body)
  end
end
