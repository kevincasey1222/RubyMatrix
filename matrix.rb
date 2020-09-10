=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix

  attr_reader :rows
  attr_reader :columns

  def initialize(input)
    @rows = input.each_line.map do |row|
      row.split.map &:to_i
    end

    # build the columns from the rows
    # one option:
    #@columns = 1.upto(@rows[0].count).map { Array.new(@rows.count) } # assume every row has the same number of elements
    #another option:
    @columns = Array.new(@rows[0].count) {Array.new(@rows.count)}
    @columns.each_with_index do |c, i| 
      @rows.each_with_index { |r, j| c[j] = r[i] }
    end
  end

end