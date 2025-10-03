class EmployeersController < ApplicationController
  before_action :set_employeer, only: %i[ show edit update destroy ]

  # GET /employeers or /employeers.json
  def index
    @employeers = Employeer.all
  end

  # GET /employeers/1 or /employeers/1.json
  def show
  end

  # GET /employeers/new
  def new
    @employeer = Employeer.new
  end

  # GET /employeers/1/edit
  def edit
  end

  # POST /employeers or /employeers.json
  def create
    @employeer = Employeer.new(employeer_params)

    respond_to do |format|
      if @employeer.save
        format.html { redirect_to @employeer, notice: "Employeer was successfully created." }
        format.json { render :show, status: :created, location: @employeer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employeer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeers/1 or /employeers/1.json
  def update
    respond_to do |format|
      if @employeer.update(employeer_params)
        format.html { redirect_to @employeer, notice: "Employeer was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @employeer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employeer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeers/1 or /employeers/1.json
  def destroy
    @employeer.destroy!

    respond_to do |format|
      format.html { redirect_to employeers_path, notice: "Employeer was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeer
      @employeer = Employeer.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def employeer_params
      params.expect(employeer: [ :emp_name, :emp_email ])
    end
end
