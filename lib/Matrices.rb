require "Fracciones.rb"

class Matrices
	attr_reader :ancho, :matriz
	def initialize(ancho,*elements)
					@matriz= Array.new(ancho*ancho)
					@matriz.map!{Array.new(ancho*ancho)}
					for i in 0...ancho*ancho
						@matriz[i]=elements[i]
					end
					@ancho=ancho
	end
	def [](i)
		@matriz[i]
	end

	def []=(i,other)
		@matriz[i]=other
	end

	def +(other)
				resultado= Matrices.new(@ancho*@ancho)
				for i in 0...@ancho*@ancho
						resultado[i]=@matriz[i]+other.matriz[i]
				end
				resultado
	end
	def - (other)
				resultado= Matrices.new(@ancho*@ancho)
				for i in 0...@ancho*@ancho
						resultado[i]=@matriz[i]-other.matriz[i]
				end
				resultado
	end
	def * (other)
				resultado= Matrices.new(@ancho)
				for i in 0...@ancho*@ancho
					resultado[i]=@matriz[i]
				end
				for i in 0...@ancho
       				 for j in 0...@ancho
                			for k in 0...@ancho
                        		if j==0
                        			resultado[i*@ancho+j]=(@matriz[i*ancho+k]*other.matriz[k*ancho+j])
                        		else
                        			resultado[i*@ancho+j]=resultado[i*@ancho+j]+(@matriz[i*ancho+k]*other.matriz[k*ancho+j])
                        		end
                			end		
        			end
				end
				resultado				
	end
	
	def -@
		resultado= Matrices.new(@ancho*@ancho)
		for i in 0...@ancho*@ancho
			resultado[i]=-matriz[i]	
       	end
       	resultado
	end
	
	def == (other)
		for i in 0...@ancho*@ancho
        	 	if(matriz[i]!=other.matriz[i])
					return false
				end				
		end
		return true
	end
end
