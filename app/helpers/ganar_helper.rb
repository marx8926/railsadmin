module GanarHelper
	def estados_for_select
		select("", "estados", EstadoCivil.all.collect {|p| [ p.nombre, p.id ] })
	end

	def red_for_select
		select("", "red", Red.order(:code).collect{|p| [p.code, p.id]})
	end

	def lugar_for_select
		select("","lugar", Lugar.order(:nombre).collect{ |p| [p.nombre, p.id]})
	end

	def estado_civil_for_select
		select("","ecivil",EstadoCivil.order(:nombre).collect{|p| [p.nombre, p.id]})
	end
end
