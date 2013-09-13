class AdministrarController < ApplicationController
	before_filter :authenticate_user!

	def index

	end

	def iglesia
		@n = Iglesia.count

		if @n >0
			@church = Iglesia.first
			flash[:success] = @church.creacion
			
		end

	end

	def create
		@creacion = params[:creacion]
		@telefono = params[:telefono]
		@distrito = params[:distrito]
		@direccion = params[:direccion]
		@referencia= params[:referencia]
		@longitud = params[:longitud]
		@latitud = params[:latitud]



		
		@n = Iglesia.count
		if @n == 0

			@church = Iglesia.new({:creacion=>@creacion,
			:telefono=>@telefono,:direccion=>@direccion,
			:referencia=>@referencia,:latitud=>@latitud,
			:longitud=>@longitud, :ubigeo_id=>@distrito})

			@church.save
			flash[:success] = 'Registro con exito'	
		else
			

			@church = Iglesia.first
			@church.creacion = @creacion
			@church.telefono = @telefono
			@church.direccion = @direccion
			@church.referencia = @referencia
			@church.latitud = @latitud
			@church.longitud = @longitud
			@church.ubigeo_id = @distrito

			@church.save

			flash[:success] = ''
		end

		redirect_to administrar_iglesia_path(@church)
	end

	def rednew

	end

	def redsave

		@red = params[:red]
		@tipo = params[:tipo]
		@creacion = params[:creacion]
		@tel = params[:telefono]
		@direccion = params[:direccion]
		@referencia= params[:referencia]
		@longitud = params[:longitud]
		@latitud = params[:latitud]
		@distrito = params[:distrito]

		@church = Iglesia.first

		if @church == nil
			flash[:error] = "Registre los datos de la iglesia"

			@network = nil
		else

			@network = Red.find_or_create_by(code: @red ) do |c|

				c.code = @red
				c.tipo = @tipo
				c.direccion = @direccion
				c.referencia = @referencia
				c.latitud = @latitud
				c.longitud = @longitud
				c.activo = true
				c.creacion = @creacion
				c.iglesia_id = @church.id
				c.ubigeo_id = @distrito

			end

			if @network.save
				flash[:success] = "Registro con exito"
			else
				flash[:error] = "Error en registro"
			end

		end

		

		# Red.new({:code=>@red,:tipo=>@tipo, :direccion=>@direccion,
		#	:referencia=>@referencia,:latitud=>@latitud,
		#	:longitud=>@longitud, :telefono=>@tel})
		

		redirect_to administrar_red_path(@network)
	end

	def redlista

	end
	def redmapa

	end

	def roles

	end

	def usuario

	end

	def asistculto

	end

	def reporteasist
		
	end
end
