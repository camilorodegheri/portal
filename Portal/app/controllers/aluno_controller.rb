class AlunoController < ApplicationController
  # GET /aluno
  # GET /aluno.json
  def index
    @aluno = Aluno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aluno }
    end
  end

  # GET /aluno/1
  # GET /aluno/1.json
  def show
    @aluno = Aluno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aluno }
    end
  end

  # GET /aluno/new
  # GET /aluno/new.json
  def new
    @aluno = Aluno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aluno }
    end
  end

  # GET /aluno/1/edit
  def edit
    @aluno = Aluno.find(params[:id])
  end

  # POST /aluno
  # POST /aluno.json
  def create
    @aluno = Aluno.new(params[:aluno])

    respond_to do |format|
      if @aluno.save
        format.html { redirect_to @aluno, notice: 'Aluno was successfully created.' }
        format.json { render json: @aluno, status: :created, location: @aluno }
      else
        format.html { render action: "new" }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aluno/1
  # PUT /aluno/1.json
  def update
    @aluno = Aluno.find(params[:id])

    respond_to do |format|
      if @aluno.update_attributes(params[:aluno])
        format.html { redirect_to @aluno, notice: 'Aluno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aluno/1
  # DELETE /aluno/1.json
  def destroy
    @aluno = Aluno.find(params[:id])
    @aluno.destroy

    respond_to do |format|
      format.html { redirect_to aluno_index_url }
      format.json { head :no_content }
    end
  end
end
