class AnkitsController < ApplicationController  
  before_action :set_ankit, only: %i[ show edit update destroy ]
  before_action :print_massage
  after_action :print_this

  def print_massage
     puts "i am ankit"
  end
  def print_this
    puts "======================================="
   puts "okk bye"
   puts "======================================="

  end

  # GET /ankits or /ankits.json
  def index
    @ankits = Ankit.all
  end

  # GET /ankits/1 or /ankits/1.json
  def show
  end

  # GET /ankits/new
  def new
    @ankit = Ankit.new
  end

  # GET /ankits/1/edit
  def edit
  end

  # POST /ankits or /ankits.json
  def create
    @ankit = Ankit.new(ankit_params)

    respond_to do |format|
      if @ankit.save
        CrudNotificationMailer.create_notification(@ankit).deliver_now
        format.html { redirect_to ankit_url(@ankit), notice: "Ankit was successfully created." }
        format.json { render :show, status: :created, location: @ankit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ankit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ankits/1 or /ankits/1.json
  def update
    respond_to do |format|
      if @ankit.update(ankit_params)
        CrudNotificationMailer.update_notification(@ankit).deliver_now
        format.html { redirect_to ankit_url(@ankit), notice: "Ankit was successfully updated." }
        format.json { render :show, status: :ok, location: @ankit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ankit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ankits/1 or /ankits/1.json
  def destroy
    CrudNotificationMailer.delete_notification(@ankit).deliver_now
    @ankit.destroy

    respond_to do |format|
      format.html { redirect_to ankits_url, notice: "Ankit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ankit
      @ankit = Ankit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ankit_params
      params.require(:ankit).permit(:name, :email, :age)
    end
end
