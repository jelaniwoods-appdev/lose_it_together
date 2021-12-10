class WeightDailyEntriesController < ApplicationController
  before_action :set_weight_daily_entry, only: [:show, :edit, :update, :destroy]

  # GET /weight_daily_entries
  def index
    @weight_daily_entries = WeightDailyEntry.all
  end

  # GET /weight_daily_entries/1
  def show
  end

  # GET /weight_daily_entries/new
  def new
    @weight_daily_entry = WeightDailyEntry.new
  end

  # GET /weight_daily_entries/1/edit
  def edit
  end

  # POST /weight_daily_entries
  def create
    @weight_daily_entry = WeightDailyEntry.new(weight_daily_entry_params)

    if @weight_daily_entry.save
      redirect_to @weight_daily_entry, notice: 'Weight daily entry was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /weight_daily_entries/1
  def update
    if @weight_daily_entry.update(weight_daily_entry_params)
      redirect_to @weight_daily_entry, notice: 'Weight daily entry was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /weight_daily_entries/1
  def destroy
    @weight_daily_entry.destroy
    redirect_to weight_daily_entries_url, notice: 'Weight daily entry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_daily_entry
      @weight_daily_entry = WeightDailyEntry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def weight_daily_entry_params
      params.require(:weight_daily_entry).permit(:weight_tracker_user_id, :weight_in_lb, :recorded_date)
    end
end
