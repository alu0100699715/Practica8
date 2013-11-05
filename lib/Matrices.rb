class Matrices
	attr_reader :ancho, :matriz
	def initialize(*elements, ancho)
		#raise "Los parametros deben ser de tipo Array, int, int y del tamaño correcto"
		#		unless elements.instance_of?Array || (ancho*ancho) != elements.size 
					@matriz[ancho][ancho]=0
					for i in 0..ancho
						for j in 0..ancho
							matriz[i][j]=elements[i][j]
						end
					end
					@ancho=ancho
		#		end

	end
	def +(other)
		#raise "No se puede multiplicar el elemento"
		#	unless other.instance_of?Matrices || ancho!=other.ancho
				Resultado[ancho*ancho]
				for i in 0..ancho
					for j in 0..ancho
						Resultado[i][j]=matriz[i][j]+other.matriz[i][j]
					end
				end
				Resultado
		#	end
	end
	def -(other)
		#raise "No se puede multiplicar el elemento"
		#	unless other.instance_of?Matrices || ancho!=other.ancho
				Resultado[ancho*ancho]
				for i in 0..ancho
					for j in 0..ancho
						Resultado[i][j]=matriz[i][j]-other.matriz[i][j]
					end
				end
				Resultado
		#	end
	end
	def *(other)
		#raise "No se puede multiplicar el elemento"
		#	unless other.instance_of?Matrices || ancho!=other.ancho
				Resultado[ancho*ancho]
				for i in 0..ancho
       				 for j in 0..ancho
                			for k in 0..ancho
                        		Resultado[i][j]+=matriz[i][k]*other.matriz[k][j]
                			end		
        			end
				end
				Resultado				
		#	end
	end
	def Opuesto
		Resultado[ancho*ancho]
		for i in 0..ancho
       		for j in 0..ancho
       			Resultado[i][j]=-matriz[i][j]
       		end
       	end
       	Resultado
	end
end