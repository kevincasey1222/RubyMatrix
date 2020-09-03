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
    i = 0 # count rows
    @rows = Array.new(temp_rows.count)
    temp_rows.each { |r| 
      @rows[i] = r.split # @row is now an array of strings
      @rows[i].map! { |num| num.to_i } # now it's an array of integers
      i = i + 1
    }

    # build the columns from the rows
    @columns = Array.new(@rows[0].count) # assume every row has the same number of elements. That's how many columns.
    j = 0 # count columns
    @columns.each { |c| 
      c = Array.new(@rows.count) # give each column an array with length equal to the number of rows
      i = 0 # count rows to put elements in the column array
      @rows.each { |r| 
        c[i] = r[j]
        i = i + 1
      }
      @columns[j] = c
      j = j + 1
    }
  end

end