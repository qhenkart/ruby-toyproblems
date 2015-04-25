def hash_correct(wrong)
	new_hash = {}
	wrong.each do |x, y|
		bar = x.to_s.ord + 1
		new_hash[bar.chr.to_sym] = y
	end
	new_hash
end


class Hash

	def set_add_el({:x => true})
		elem = {x: true}


	end



end