class AdministrarController < ApplicationController
	before_filter :authenticate_user!

	def index

	end

	def iglesia
		

	end

	def create
		@creacion = params[:creacion]
		@telefono = params[:telefono]
		@distrito = params[:distrito]
		@direccion = params[:direccion]
		@referencia= params[:referencia]
		@longitud = params[:longitud]
		@latitud = params[:latitud]

		@church = Iglesia.new({:creacion=>@creacion,
			:telefono=>@telefono,:direccion=>@direccion,
			:referencia=>@referencia,:latitud=>@latitud,
			:longitud=>@longitud})
		@n = Iglesia.count
		if @n == 0
			@church.save
			flash[:success] = "Registro con exito"	
		else
			flash[:error] = "Error en registro"
		end

		redirect_to administrar_iglesia_path
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

		@network = Red.new({:code=>@red,:tipo=>@tipo, :direccion=>@direccion,
			:referencia=>@referencia,:latitud=>@latitud,
			:longitud=>@longitud, :telefono=>@tel})
		if @network.save
			flash[:success] = "Registro con exito"
		else
			flash[:error] = "Error en registro"
		end

		redirect_to administrar_red_path
	end
end
