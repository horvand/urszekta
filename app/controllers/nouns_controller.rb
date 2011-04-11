class NounsController < ApplicationController
  # GET /nouns
  # GET /nouns.xml
  def index
    @nouns = Noun.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nouns }
    end
  end

  # GET /nouns/1
  # GET /nouns/1.xml
  def show
    @noun = Noun.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @noun }
    end
  end

  # GET /nouns/new
  # GET /nouns/new.xml
  def new
    @noun = Noun.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @noun }
    end
  end

  # GET /nouns/1/edit
  def edit
    @noun = Noun.find(params[:id])
  end

  # POST /nouns
  # POST /nouns.xml
  def create
    @noun = Noun.new(params[:noun])

    respond_to do |format|
      if @noun.save
        format.html { redirect_to(@noun, :notice => 'Noun was successfully created.') }
        format.xml  { render :xml => @noun, :status => :created, :location => @noun }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @noun.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nouns/1
  # PUT /nouns/1.xml
  def update
    @noun = Noun.find(params[:id])

    respond_to do |format|
      if @noun.update_attributes(params[:noun])
        format.html { redirect_to(@noun, :notice => 'Noun was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @noun.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nouns/1
  # DELETE /nouns/1.xml
  def destroy
    @noun = Noun.find(params[:id])
    @noun.destroy

    respond_to do |format|
      format.html { redirect_to(nouns_url) }
      format.xml  { head :ok }
    end
  end
end
