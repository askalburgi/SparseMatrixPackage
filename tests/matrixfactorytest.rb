require 'test/unit'
require_relative '../sparsematrixpackage/matrixfactory.rb'

class MatrixFactoryTest < Test::Unit::TestCase
    def setup
        #pass 
    end 

    def teardown
        #pass
    end
    
    #def test_fail
    #    assert(false, 'Assertion was false.')
    #end
    
    def test_create
		MatrixFactory.create(SparseMatrix,[[0,0,0],
										   [0,1,0],
										   [0,0,0]])
		MatrixFactory.create(TriDiagonalMatrix,[[1,0,0],
												[0,1,0],
												[0,0,1]])
		assert(true,"pass")
    end
    
    def test_bad_create
		assert_throws("Matrix input must be an array of arrays"){
			MatrixFactory.create(SparseMatrix, 123)
		}
		assert_throws("Matrix input must be an array of arrays"){
			MatrixFactory.create(TriDiagonalMatrix, "lol")
		}
    end
end
