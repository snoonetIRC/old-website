class StaffController < ApplicationController
  # GET /staff
  # GET /staff.json
  def index
    @staff = Staff.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staff }
    end
  end

  # # GET /staff/1
  # # GET /staff/1.json
  # def show
  #   @staff = Staff.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @staff }
  #   end
  # end

  # # GET /staff/new
  # # GET /staff/new.json
  # def new
  #   @staff = Staff.new

  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @staff }
  #   end
  # end

  # # GET /staff/1/edit
  # def edit
  #   @staff = Staff.find(params[:id])
  # end

  # # POST /staff
  # # POST /staff.json
  # def create
  #   @staff = Staff.new(params[:staff])

  #   respond_to do |format|
  #     if @staff.save
  #       format.html { redirect_to @staff, notice: 'Staff was successfully created.' }
  #       format.json { render json: @staff, status: :created, location: @staff }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @staff.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PUT /staff/1
  # # PUT /staff/1.json
  # def update
  #   @staff = Staff.find(params[:id])

  #   respond_to do |format|
  #     if @staff.update_attributes(params[:staff])
  #       format.html { redirect_to @staff, notice: 'Staff was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @staff.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /staff/1
  # # DELETE /staff/1.json
  # def destroy
  #   @staff = Staff.find(params[:id])
  #   @staff.destroy

  #   respond_to do |format|
  #     format.html { redirect_to staff_url }
  #     format.json { head :no_content }
  #   end
  # end
end
