#
# figure out, what swig did with the header file
#

require 'spec_helper'
require 'fec'

#Fec.fec_free
#Fec.fec_new
#Fec.fec_decode
#Fec.fec_encode

module Fec
	describe "fec_new" do
		it "should create a new fec object"
	end

	describe "fec_free" do
		it "should free a fec object"
	end

	describe "fec_encode" do
		it "encode data"
	end

	describe "fec_decode" do
		it "decode data"
	end

end
