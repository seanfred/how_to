class StepsController < ApplicationController
  before_filter :find_howtolist
  before_filter :find_step, :only => [:show, :edit, :update, :destroy]



  def show
  end

  def new
    @step = @howtolist.steps.build
  end

  def create
    @step = @howtolist.steps.build(params[:step])
    if @step.save
     # flash[:notice] = "Step has been created."
      redirect_to [@howtolist, @step]
    else
    #  flash[:alert] = "Step has not been created."
      render :action => "new"
    end
  end

  def edit

  end

  def update
    if @step.update_attributes(params[:step])
      flash[:notice] = "Step has been updated."
      redirect_to [@howtolist, @step]
    else
      flash[:alert] = "Step has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @step.destroy
    flash[:notice] = "Step has been deleted."
    redirect_to @howtolist
  end

  private
    def find_howtolist
      @howtolist = Howtolist.find(params[:howtolist_id])
    end

    def find_step
      @step = @howtolist.steps.find(params[:id])
end
end
