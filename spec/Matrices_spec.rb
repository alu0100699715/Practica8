require "Matrices.rb"

describe Matrices do  
	before :each do
		@Arr = [10,10,10,10,10,10,10,10,10]
		@m1=Matrices.new([1,2,3,4,5,6,7,8,9],3)
		@m2=Matrices.new([9,8,7,6,5,4,3,2,1],3)
	end
	describe "Operaciones de Matrices" do
                it "Sumar" do
                        (@m1+@m2).should eq(Matrices.new(@Arr,3))
                end
                it "Restar" do
                        (@m1-@m2).should eq(Matrices.new([-8,-6,-4,-2,0,2,4,6,8],3))
                end
                it "Multiplicar" do
						(@m1*@m2).should eq(Matrices.new([30,24,18,84,69,54,138,114,90],3))
                end
                it "Opuesto" do
                		@m1.Opuesto.should eq(Matrices.new([-1,-2,-3,-4,-5,-6,-7,-8,-9],3))
                end
                
    end
end