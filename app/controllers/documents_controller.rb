class DocumentsController < ApplicationController
  def index
    @document = Document.all
  end
  def show
    @document = Document.find(params[:id])
  end
  def new
    @document=Document.new
  end

  def create
    @document = Document.new(document_params)
    @document.uploadfile(params[:upload ])
    if @document.save
      redirect_to @document
    else
      render 'new'
    end
  end

  def uploadfile(params)
    document = @document.upload(params[:upload])
    # post = Document.upload(params[:upload])
    render :text => "File has been uploaded successfully"
  end
  def edit
    @document = Document.find(params[:id])
  end
  def update
    @document = Document.find(params[:id])
    if @document.update_attributes(document_params)
      redirect_to @document
    else
      render 'edit'
    end
  end
  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to @document
  end
  private
  def document_params
    params.require(:document).permit(:title,:author,:summary,:reference,:team_id,:conclusion,:dafile)
  end
end

