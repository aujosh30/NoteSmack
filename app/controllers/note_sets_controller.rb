class NoteSetsController < ApplicationController
  before_action :set_note_set, only: [:show, :edit, :update, :destroy]

  # GET /note_sets
  # GET /note_sets.json
  def index
    @note_sets = NoteSet.order(:title)
  end

  # GET /note_sets/1
  # GET /note_sets/1.json
  def show
  end

  # GET /note_sets/new
  def new
    @note_set = NoteSet.new
  end

  # GET /note_sets/1/edit
  def edit
  end

  # POST /note_sets
  # POST /note_sets.json
  def create
    @note_set = NoteSet.new(note_set_params)

    respond_to do |format|
      if @note_set.save
        format.html { redirect_to @note_set, notice: 'Note set was successfully created.' }
        format.json { render action: 'show', status: :created, location: @note_set }
      else
        format.html { render action: 'new' }
        format.json { render json: @note_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /note_sets/1
  # PATCH/PUT /note_sets/1.json
  def update
    respond_to do |format|
      if @note_set.update(note_set_params)
        format.html { redirect_to @note_set, notice: 'Note set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @note_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_sets/1
  # DELETE /note_sets/1.json
  def destroy
    @note_set.destroy
    respond_to do |format|
      format.html { redirect_to note_sets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note_set
      @note_set = NoteSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_set_params
      params.require(:note_set).permit(:title, :Description, :SchoolID, :Class, :ClassDate)
    end
end
