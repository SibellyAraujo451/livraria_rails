class LivrosController < ApplicationController
  before_action :set_livro, only: [:show, :edit, :update, :destroy]

  def index
    @livros = Livro.all
  end

  def show
    
  end

  def new
    @livro = Livro.new
  end

  def edit
  end

  def create
    @livro = Livro.new(livro_params)
    if @livro.save
      redirect_to @livro, notice: "Livro criado com sucesso."
    else
      render :new
    end
  end

  def update
    if @livro.update(livro_params)
      redirect_to @livro, notice: "Livro atualizado com sucesso."
    else
      render :edit
    end
  end
def destroy
  @livro.destroy
  respond_to do |format|
    format.html { redirect_to livros_url, notice: "Livro excluído com sucesso." }
    format.json { head :no_content }
  end
end


  private

  def set_livro
    @livro = Livro.find(params[:id])
  end

  def livro_params
    params.require(:livro).permit(:titulo, :autor, :ano_publicacao, :alugado)
  end
end
