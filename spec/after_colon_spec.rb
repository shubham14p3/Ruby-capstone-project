# require '/home/opeyemi/Desktop/Microverse-Projects/Ruby-capstone-project/lib/after_colon.rb'
require_relative '../lib/after_colon.rb'
# require 'colorize'
# require_relative 'spec_helper.rb'

include AfterColon
# include Colorize

describe AfterColon do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:file_details) { File.readlines('./style.css') }

  describe '#after_colon_check' do
    it 'returns an empty array when all the colons on line has the right afterspace' do
      AfterColon.after_colon_check(file_details[34], 34, error_array)
      expect(error_array).to eql([])
    end

    it 'It pushes an error message into the error array when the colons do not have the right afterspace' do
      AfterColon.after_colon_check(file_details[136], 136, error_array)
      expect(error_array).to eq(["\e[0;36;49mNo space after colon on line 137\e[0m"])
    end

    it 'It returns an empty array if the line passed conly contains a psuedocode' do
      AfterColon.after_colon_check(file_details[113], 113, error_array)
      expect(error_array).to eq([])
    end

    it 'It returns an empty array if the line passed conly contains a psuedocode' do
      AfterColon.after_colon_check(file_details[113], 113, error_array)
      expect(error_array).to eq([])
    end
  end
end
