class NotesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_note, only: [:update, :edit, :show]

  def index
  end

  def new 
    @note = current_user.notes.build 
  end

  def create
    @note = current_user.notes.build note_params

    if @note.save
      redirect_to @note
    else
      render 'new'
    end
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
    params.require(:note).permit(:title, :body, :user_id)
  end
end
