class Convert

	def initialize
	  invertedfraction = 5/9.to_f
    @y = invertedfraction
		fraction = 9/5.to_f
		@x = fraction
	end
# T(c) = (5/9)*[T(f)-32]
# T(f) = (9/5)*T(c)+32
	def celsius(f)
		
		f = f.to_f
		cels = f - 32
		cels = cels * @y
		cels
		
	end
	
	def fahrenheit(c)
	
		c = c.to_f
		fahr = c * @x
		fahr = fahr + 32
		fahr
		
	end
	
end

