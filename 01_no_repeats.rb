def no_repeats(year_start, year_end)
	answer = (year_start..year_end).select { |x| no_repeat?(x) }
end


def no_repeat?(year)
	year.to_s.each_char { |x| return false if year.to_s.count(x) > 1 }
	true
end
