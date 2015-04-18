class NotesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_note, only: [:update, :edit, :show]

  def index
    @notes = current_user.notes
  end

  def new 
    @note = current_user.notes.build 
  end

  def create
    @note = current_user.notes.build note_params

    if @note.save
      redirect_to @note, notice: "Note has been created"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to @note, notice: "Note has benn updated"
    else
      render 'edit'
    end
  end

  def show
    @html = markdown.render @note.body
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
  end

  def note_params
    params.require(:note).permit(:title, :body)
  end
end
