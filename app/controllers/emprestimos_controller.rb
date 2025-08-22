class EmprestimosController < ApplicationController
  before_action :set_emprestimo, only: [:show, :edit, :update, :destroy]

  def index
    @emprestimos = Emprestimo.all
  end

  def show
    @emprestimo = Emprestimo.find(params[:id])
  end


  def new
    @emprestimo = Emprestimo.new
  end

  def edit
  end

  def create
  @emprestimo = Emprestimo.new(emprestimo_params)
  
  if @emprestimo.save
    redirect_to @emprestimo, notice: "Empréstimo criado com sucesso."
  else
    render :new
  end
end


  def update
    if @emprestimo.update(emprestimo_params)
      redirect_to @emprestimo, notice: "Empréstimo atualizado com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @emprestimo.destroy
    redirect_to emprestimos_url, notice: "Empréstimo deletado com sucesso."
  end

  private

  def set_emprestimo
    @emprestimo = Emprestimo.find(params[:id])
  end

  def emprestimo_params
     params.require(:emprestimo).permit(:pessoa_id, :livro_id, :data_inicio, :data_fim, :status)
  end



end
