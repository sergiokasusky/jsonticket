class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.all
    render json: @clientes
    #cookies[:name] = { :value => "valor de la cookie", :expires => Time.now + 3600}
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
    render json: @cliente
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save        
        format.html { redirect_to @cliente, notice: 'El cliente fue creado exitosamente' }
        format.json { render json: @cliente, status: :created, location: @cliente }
        #En producción ¿tiene caso mostrar lo creado? format.json { render json: @cliente, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'El cliente fue acttualizado exitosamente' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def getalltickets
    @cliente= Cliente.find(params[:id])
    @tickets= @cliente.tickets
    @reportes= Array.new
    reporte= Hash.new("reporte")
    @tickets.each do |ticket|
      reporte = {"id" => ticket.id, "abierto" => ticket.abierto, "desc_corta" => ticket.desc_corta, "detalles" => ticket.detalles, 
        "equipo_id" => ticket.equipo_id, "equipo_desc_corta" => ticket.equipo.desc_corta, "created_at" => ticket.created_at}
      @reportes.push reporte
    end
    respond_to do |format|
      format.json {render json: @reportes  }
    end
    #render json: @tickets
  end
  
  def getopentickets
    @cliente = Cliente.find(params[:id])
    @tickets= @cliente.tickets.where("abierto = ?", true)
    @reportes= Array.new
    reporte= Hash.new("reporte")
    @tickets.each do |ticket|
      reporte = {"id" => ticket.id, "abierto" => ticket.abierto, "desc_corta" => ticket.desc_corta, "detalles" => ticket.detalles, 
        "equipo_id" => ticket.equipo_id, "equipo_desc_corta" => ticket.equipo.desc_corta, "created_at" => ticket.created_at}
      @reportes.push reporte
    end
    respond_to do |format|
      format.json {render json: @reportes  }
    end
    #render json: @tickets
  end
  
  def getclosedtickets
    @cliente = Cliente.find(params[:id])
    @tickets= @cliente.tickets.where("abierto = ?", false)
    @reportes= Array.new
    reporte= Hash.new("reporte")
    @tickets.each do |ticket|
      reporte = {"id" => ticket.id, "abierto" => ticket.abierto, "desc_corta" => ticket.desc_corta, "detalles" => ticket.detalles, 
        "equipo_id" => ticket.equipo_id, "equipo_desc_corta" => ticket.equipo.desc_corta, "created_at" => ticket.created_at}
      @reportes.push reporte
    end
    respond_to do |format|
      format.json {render json: @reportes  }
    end
    #render json: @tickets
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
      rescue
        #redirect_to clientes_path
        raise ActionController::RoutingError.new('404 No encontrado')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:nombre, :email, :password, :telefono, :direccion)
    end
end
