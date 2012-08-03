#
# figure out, what swig did with the header file
#

require 'spec_helper'
require 'fec'

module Fec
	describe "fec - Forward Error Correction" do
		before(:each) do
			@number_packets_required_for_reconstruction = 3
			@number_packets_generated = 5

			@number_packets_required_for_reconstruction.should <= @number_packets_generated
		end

		describe "fec_new" do
			it "should create a new fec object" do
				matrix = Fec.fec_new @number_packets_required_for_reconstruction,
						@number_packets_generated
				#@number_packets_generated.should be_greater_than(@number_packets_required_for_reconstruction)
			end
		end

		describe "fec_free" do
			it "should free a fec object" do
				matrix = Fec.fec_new @number_packets_required_for_reconstruction,
						@number_packets_generated
				Fec.fec_free(matrix)
			end
		end

		describe "fec_encode" do
			it "encode data" do
				pending "Need to figure out typemaps, mapping the correct data types to/from Fixnum in blocks"
				matrix = Fec.fec_new @number_packets_required_for_reconstruction,
						@number_packets_generated
				blocks = 1
				outblocks = @number_packets_generated
				block_nums = 1
				Fec.fec_encode(matrix, blocks, outblocks, block_nums, 2, 8)
				Fec.fec_free(matrix)
			end
		end

		describe "fec_decode" do
			it "decode data" do
				pending "Need to figure out typemaps, mapping the correct data types to/from Fixnum in blocks"
				matrix = Fec.fec_new @number_packets_required_for_reconstruction,
						@number_packets_generated
				blocks = 1
				recoveredblocks = []
				block_nums = 1
				Fec.fec_decode(matrix, blocks, recoveredblocks, block_nums, 8);
				Fec.fec_free(matrix)
			end
		end
	end
end
