class SectionsController < ApplicationController
  
  before_filter :get_resume
  
  # GET /sections
  # GET /sections.json
  def index
    @sections = @resume.sections.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sections }
    end
  end

  # GET /sections/1
  # GET /sections/1.json
  def show
    @section = @resume.sections.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section }
    end
  end

  # GET /sections/new
  # GET /sections/new.json
  def new
    @section = @resume.sections.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section }
    end
  end

  # GET /sections/1/edit
  def edit
    @section = @resume.sections.find(params[:id])
  end

  # POST /sections
  # POST /sections.json
  def create
    @section = @resume.sections.build(params[:section])

    respond_to do |format|
      if @section.save
        format.html { redirect_to [@resume, @section], notice: '@resume.sections was successfully created.' }
        format.json { render json: @section, status: :created, location: @section }
      else
        format.html { render action: "new" }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sections/1
  # PUT /sections/1.json
  def update
    @section = @resume.sections.find(params[:id])

    respond_to do |format|
      if @section.update_attributes(params[:section])
        format.html { redirect_to [@resume, @section], notice: '@resume.sections was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.json
  def destroy
    @section = @resume.sections.find(params[:id])
    @section.destroy

    respond_to do |format|
      format.html { redirect_to @resume }
      format.json { head :no_content }
    end
  end
  
  private
  
  def get_resume
    @resume = Resume.find(params[:resume_id])
  end
end

