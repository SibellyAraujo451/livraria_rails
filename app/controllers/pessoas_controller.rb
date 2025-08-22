class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /pessoas
  def index
    @pessoas = Pessoa.all
  end

  # GET /pessoas/1
def show
  @livros = @pessoa.livros
end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
 def create
  @pessoa = Pessoa.new(pessoa_params)
  if @pessoa.save
    redirect_to pessoas_path, notice: "Pessoa criada com sucesso."
  else
    render :new
  end
end

def update
  if @pessoa.update(pessoa_params)
    redirect_to pessoas_path, notice: "Pessoa atualizada com sucesso."
  else
    render :edit
  end
end


# DELETE /pessoas/1
def destroy
  if @pessoa.livros.exists?
    redirect_to pessoas_url, alert: "Não é possível deletar esta pessoa, pois ela ainda possui livros emprestados."
  else
    @pessoa.destroy
    redirect_to pessoas_url, notice: "Pessoa deletada com sucesso."
  end
end


  private

  def set_pessoa
    @pessoa = Pessoa.find(params[:id])
  end

  def pessoa_params
    params.require(:pessoa).permit(:nome, :email, :telefone)
  end
end
