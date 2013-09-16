class GanarController < ApplicationController
	before_filter :authenticate_user!

	def registro

	end

	def registro_create

		@nombres = params[:nombres]
		@apellidos = params[:apellidos]
		@edad = params[:edad]
		@ecivil = params[:ecivil]
		@sexo = params[:sexo]
		@nacimiento = params[:creacion]
		@dni = params[:dni]
		@ocupacion = params[:ocupacion]
		@profesion = params[:profesion]
		@red = params[:red]

		@casa = params[:casa]
		@cell = params[:celular]
		@tipo = params[:tipo]

		@oficina = params[:oficina]
		@cell1 = params[:celular1]
		@tipo1 = params[:tipo1]

		@email = params[:email]
		@estado = params[:estado]

		@red = params[:red]
		@lugar = params[:lugar]

		@visita = params[:visita]
		@hora = params[:hora]
		@invitado = params[:invitado]
		@oracion = params[:oracion]
		@convertido = params[:fin]

		@distrito = params[:distrito]

		@direccion = params[:direccion]
		@referencia = params[:referencia]

		@latitud = params[:latitud]
		@longitud = params[:longitud]


		@persona = Persona.new()
		@persona.nombres = @nombres
		@persona.apellidos = @apellidos
		@persona.edad = @edad
		@persona.nacimiento = @nacimiento
		@persona.dni = @dni
		@persona.ocupacion = @ocupacion
		@persona.profesion = @profesion
		@persona.estado = @ecivil
		@persona.dia = @visita
		@persona.hora = @hora
		@persona.direccion =  @direccion
		@persona.referencia = @referencia
		@persona.invitado = @invitado
		@persona.conversion = @convertido
		@persona.latitud = @latitud
		@persona.longitud = @longitud
		@persona.ubigeo_id = @distrito
		@persona.lugar_id = @lugar
		@persona.estado_civil_id = @ecivil
		@persona.red_id= @red

		@church = Iglesia.first
		@persona.iglesia_id = @church.id

		if @persona.save

			@orar = Peticion.new()
			@orar.descripcion = @oracion
			@orar.persona_id = @persona.id

			@orar.save

			#telefono casa
			@tel = Telefono.new({:numero=>params[:casa], :tipo=>'H'})
			@tel.persona_id = @persona.id			
			@tel.save

			#celular
			@cell = Telefono.new({:numero=>params[:celular], :tipo=>params[:tipo]})
			@cell.persona_id = @persona.id
			@cell.save

			#oficina 
			@ofi = Telefono.new({:numero=>params[:oficina], :tipo=>'O'})
			@ofi.persona_id = @persona.id
			@ofi.save

			#celular 2
			@cell1 = Telefono.new({:numero=>params[:celular1], :tipo=>params[:tipo1]})
			@cell1.persona_id = @persona.id
			@cell1.save


			flash[:success] = 'Registro con exito'

		else
			flash[:error] = "Error en registro"
		end

		redirect_to ganar_registro_path

	end

	def search
		
	end

	def configurar

		@lugar = Lugar.all
		@es = EstadoCivil.all
		@regla = Regla.all

		return [@lugar, @es, @regla]
	end

	def lugar_create
		@creacion = params[:place]

		@lugar = Lugar.new({:nombre=>@creacion})
		@lugar.save

		redirect_to ganar_configurar_path
	end

	def es_create
		@es = params[:nombre]

		@estado_civil = EstadoCivil.new({:nombre=>@es})
		@estado_civil.save

		redirect_to ganar_configurar_path
	end


	def regla_create

		@regla = params[:regla]
		@estado = params[:estados]
		@desde = params[:desde]
		@hasta = params[:hasta]

		@re = Regla.new({:regla=> @regla, :desde=> @desde, :hasta=>@hasta, :estado_civil_id => @estado})
		@re.save

		redirect_to ganar_configurar_path
	end
	def busqueda

	end

	def informe

	end

	def reporte

	end
end
