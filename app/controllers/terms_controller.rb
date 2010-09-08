class TermsController < ApplicationController
    before_filter :authorize
 
  def index
    @terms = Term.all
  end

  def show
    @term = Term.find(params[:id])
  end

  def new
    @term = Term.new
  end

  def edit
    @term = Term.find(params[:id])
  end

  def create
    @term = Term.new(params[:term])
      if @term.save
        flash[:notice] = 'Term was successfully created.'
         redirect_to(@term)
      else
        render :action => "new"
    end
  end

  def update
    @term = Term.find(params[:id])
      if @term.update_attributes(params[:term])
        flash[:notice] = 'Term was successfully updated.'
        redirect_to(@term)
      else
        render :action => "edit"
    end
  end

  def destroy
    @term = Term.find(params[:id])
    @term.destroy
    flash[:notice] = 'Term was successfully destroyed.'
  end
  
end
