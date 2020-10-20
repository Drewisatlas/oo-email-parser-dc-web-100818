# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
    attr_accessor :emails, :string


    def initialize (unformattedString)
       @emails = []
       @string = unformattedString
    end

    def parse
       commaSeparatedValues = @string.split(", ")
       spaceSeparater = commaSeparatedValues.map { |string| string.split(" ")}.flatten.uniq
       @emails = spaceSeparater
    end
end
