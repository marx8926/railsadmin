module AdministrarHelper
	def departamentos_for_select
		select("post", "departamento", Ubigeo.select('departamento, coddep, lat, lng').group(
			'departamento, coddep, lat, lng' ).order('departamento').collect {|p| [ p.departamento, p.coddep ] }, {include_blank: 'Ninguno'})
	end

	def provincias_for_select(prov)
		select("post", "provincia", Ubigeo.select('provincia, codprov, lat, lng').group(
			'provincia, codprov, lat, lng' ).order('provincia').where(coddep: prov).collect {|p| [ p.provincia, p.codprov ] }, {include_blank: 'Ninguno'})
	end
end
