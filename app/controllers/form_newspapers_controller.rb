class FormNewspapersController < ApplicationController
  before_action :set_form_newspaper, only: %i[ show edit update destroy ]

  # GET /form_newspapers or /form_newspapers.json
  def index
    @form_newspapers = FormNewspaper.all
  end

  # GET /form_newspapers/1 or /form_newspapers/1.json
  def show
  end

  # GET /form_newspapers/new
  def new
    @form_newspaper = FormNewspaper.new
  end

  # GET /form_newspapers/1/edit
  def edit
  end

  # POST /form_newspapers or /form_newspapers.json
  def create
    @form_newspaper = FormNewspaper.new(form_newspaper_params)

    respond_to do |format|
      if @form_newspaper.save
        format.html { redirect_to @form_newspaper, notice: "Form newspaper was successfully created." }
        format.json { render :show, status: :created, location: @form_newspaper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @form_newspaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_newspapers/1 or /form_newspapers/1.json
  def update
    respond_to do |format|
      if @form_newspaper.update(form_newspaper_params)
        format.html { redirect_to @form_newspaper, notice: "Form newspaper was successfully updated." }
        format.json { render :show, status: :ok, location: @form_newspaper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @form_newspaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_newspapers/1 or /form_newspapers/1.json
  def destroy
    @form_newspaper.destroy
    respond_to do |format|
      format.html { redirect_to form_newspapers_url, notice: "Form newspaper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_newspaper
      @form_newspaper = FormNewspaper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def form_newspaper_params
      params.require(:form_newspaper).permit(:name, :nickname, :age)
    end
end
