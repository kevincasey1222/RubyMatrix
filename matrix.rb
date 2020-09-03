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
    temp_rows = input.split(%r{\n}) # each temp_row is now a string of space delimited numbers
    @rows = temp_rows.map { |row|
      row.split.map! { |num| num.to_i }
    }

    # build the columns from the rows
    @columns = Array.new(@rows[0].count).map { |c| c = Array.new(@rows.count) } # assume every row has the same number of elements
    @columns.map.with_index { |c, i| 
      @rows.each_with_index { |r, j| 
        c[j] = r[i]
      }
    }
  end

end