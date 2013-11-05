class Matrices
	attr_reader :ancho, :alto, :matriz
	def initialized(*elements, ancho)
		raise "Los parametros deben ser de tipo Array, int, int y del tamaño correcto"
				unless elements.instance_of?Array || (ancho*ancho) == elements.size 
					@matriz[ancho][ancho]=0
					for i in 0..ancho
						for j in 0..ancho
							matriz[i][j]=elements[i][j]
						end
					end
					@ancho=ancho
				end
		#end
	end
	def multiplicacion (other)
		raise "No se puede multiplicar el elemento"
			unless other.instance_of?Matrices || alto!=other.ancho
				Resultado[ancho*ancho]
				for i in 0..ancho
       				 for j in 0..ancho
                			for k in 0..ancho
                        		Resultado[i][j]+=matriz[i][k]*other.matriz[k][j]
                			end		
        			end
				end				
			end
		#end
	end
	

end