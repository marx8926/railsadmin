class GanarController < ApplicationController
	before_filter :authenticate_user!

	def registro

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
