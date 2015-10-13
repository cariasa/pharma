class ClinicsPeopleController < ApplicationController
  before_action :set_clinics_person, only: [:show, :edit, :update, :destroy]

  # GET /clinics_people
  # GET /clinics_people.json
  def index
    @clinics_people = ClinicsPerson.all
  end

  # GET /clinics_people/1
  # GET /clinics_people/1.json
  def show
  end

  # GET /clinics_people/new
  def new
    @clinics_person = ClinicsPerson.new
  end

  # GET /clinics_people/1/edit
  def edit
  end

  # POST /clinics_people
  # POST /clinics_people.json
  def create
    @clinics_person = ClinicsPerson.new(clinics_person_params)

    respond_to do |format|
      if @clinics_person.save
        format.html { redirect_to @clinics_person, notice: 'Clinics person was successfully created.' }
        format.json { render :show, status: :created, location: @clinics_person }
      else
        format.html { render :new }
        format.json { render json: @clinics_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinics_people/1
  # PATCH/PUT /clinics_people/1.json
  def update
    respond_to do |format|
      if @clinics_person.update(clinics_person_params)
        format.html { redirect_to @clinics_person, notice: 'Clinics person was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinics_person }
      else
        format.html { render :edit }
        format.json { render json: @clinics_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinics_people/1
  # DELETE /clinics_people/1.json
  def destroy
    @clinics_person.destroy
    respond_to do |format|
      format.html { redirect_to clinics_people_url, notice: 'Clinics person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinics_person
      @clinics_person = ClinicsPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinics_person_params
      params.require(:clinics_person).permit(:clinic_id, :person_id)
    end
end
