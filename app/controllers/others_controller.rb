class OthersController < ApplicationController
  # GET /others
  # GET /others.xml
  def index
    @others = Other.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @others }
    end
  end

  # GET /others/1
  # GET /others/1.xml
  def show
    @other = Other.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @other }
    end
  end

  # GET /others/new
  # GET /others/new.xml
  def new
    @other = Other.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @other }
    end
  end

  # GET /others/1/edit
  def edit
    @other = Other.find(params[:id])
  end

  # POST /others
  # POST /others.xml
  def create
    @other = Other.new(params[:other])

    respond_to do |format|
      if @other.save
        format.html { redirect_to(@other, :notice => 'Other was successfully created.') }
        format.xml  { render :xml => @other, :status => :created, :location => @other }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @other.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /others/1
  # PUT /others/1.xml
  def update
    @other = Other.find(params[:id])

    respond_to do |format|
      if @other.update_attributes(params[:other])
        format.html { redirect_to(@other, :notice => 'Other was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @other.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /others/1
  # DELETE /others/1.xml
  def destroy
    @other = Other.find(params[:id])
    @other.destroy

    respond_to do |format|
      format.html { redirect_to(others_url) }
      format.xml  { head :ok }
    end
  end
end
