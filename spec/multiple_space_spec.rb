require_relative '../lib/multiple_space.rb'
# require 'colorize'

include MultipleSpace
# include Colorize

describe MultipleSpace do
  let(:file) { './style.css' }
  let(:error_array) { [] }
  let(:file_details) { File.readlines('./style.css') }

  describe '#multiple_space_check' do
    it 'returns an empty array when all the colons have the right afterspace' do
      #   subject.multiple_space_check(file_details[2], 2, error_array)

      multiple_space_check(file_details[34], 34, error_array)
      expect(error_array).to be_a(Array)
      # file_details.each_with_index { |line, index| after_colon_check(line_content, line_index, error_messages) }end.to be_a_kind_of(Array)
      # expect(MultipleSpace.multiple_space_check(file_details[2], 2, error_array)).to return_a(Array)
    end
  end
end

# describe "sum method" do
#     it "returns the sum of 2 numbers" do
#         expect( 2+3).to eql(5)
#     end
# end
