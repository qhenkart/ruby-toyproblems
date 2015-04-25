MORSE = {
	a: ".-", b: '-...', c: '-.-.', d: '-..', e: '.', f: '..-.', g: '--.',
	h: '....', i: '..', j: '.---', k: '-.-', l: '..', m: '--', n: '-.',
	o: '---', p: '.--.', q: '--.-', r: '.-.', s: '...', t: '-', u: '..-',
	v: '...-', w: '.--', x: '-..-', y: '-.--', z: '--..', :" " => ''

}

def morse_encode(str)
	answer = []
	str.each_char do |x|
		answer << MORSE[x.downcase.to_sym]
	end
	answer.join(' ')

end
