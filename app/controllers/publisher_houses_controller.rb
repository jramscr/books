class PublisherHousesController < ApplicationController
  before_action :set_publisher_house, only: [:show, :edit, :update, :destroy]

  # GET /publisher_houses
  def index
    @publisher_houses = PublisherHouse.all
  end

  # GET /publisher_houses/1
  def show; end

  # GET /publisher_houses/new
  def new
    @publisher_house = PublisherHouse.new
  end

  # GET /publisher_houses/1/edit
  def edit; end

  # POST /publisher_houses
  def create
    @publisher_house = PublisherHouse.new(publisher_house_params)

    respond_to do |format|
      if @publisher_house.save
        format.html { redirect_to @publisher_house, notice: 'Publisher house was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /publisher_houses/1
  def update
    respond_to do |format|
      if @publisher_house.update(publisher_house_params)
        format.html { redirect_to @publisher_house, notice: 'Publisher house was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /publisher_houses/1
  def destroy
    @publisher_house.destroy
    respond_to do |format|
      format.html { redirect_to publisher_houses_url, notice: 'Publisher house was successfully destroyed.' }
    end
  end

  private

  def set_publisher_house
    @publisher_house = PublisherHouse.find(params[:id])
  end

  def publisher_house_params
    params.require(:publisher_house).permit(:name)
  end
end
