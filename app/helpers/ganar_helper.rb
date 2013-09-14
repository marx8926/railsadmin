module GanarHelper
	def estados_for_select
		select("", "estados", EstadoCivil.all.collect {|p| [ p.nombre, p.id ] })
	end
end
