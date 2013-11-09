require "Fracciones.rb"
class Matrices
	attr_reader :ancho, :matriz
	def initialize(ancho,*elements)
					@matriz= Array.new(ancho)
					@matriz.map!{Array.new(ancho)}
					for i in 0...ancho
						for j in 0...ancho
							@matriz[i][j]=elements[i*ancho+j]
						end
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
				resultado= Matrices.new(@ancho)
				i,j=0,0
				for i in 0..@ancho
					for j in 0..@ancho
						resultado[i][j]=@matriz[i][j]+other.matriz[i][j]
					end
				end
				return resultado
	end
	def -(other)
				resultado= Matrices.new(@ancho)
				for i in 0..ancho
					for j in 0..ancho
						resultado[i][j]=@matriz[i][j]-other.matriz[i][j]
					end
				end
				resultado
	end
	def *(other)
				resultado= Matrices.new(@ancho)
				for i in 0..ancho
       				 for j in 0..ancho
                			for k in 0..ancho
                        		resultado[i][j]+=@matriz[i][k]*other.matriz[k][j]
                			end		
        			end
				end
				resultado				
	end
	
	def -@
		resultado= Matrices.new(@ancho)
		for i in 0..ancho
       			for j in 0..ancho
				resultado[i][j]=-matriz[i][j]
       			end
       		end
       	resultado
	end
	
	def == (other)
		for i in 0..ancho
			for j in 0..ancho
        	 		if(@matriz[i][j]!=other.matriz[i][j])
					return false
				end				
			end
		end
		return true
	end
end
