# frozen_string_literal: true

# A regexp (regular expression) object describes a textual pattern and has methods for determining
# whether a given string matches that pattern or not.
# A range represents the value (usually integers) between two endpoints.

/[Rr]uby/ # Matches "Ruby" or "ruby"
/\d{5}/ # Matches 5 consecutive digits
1..3  # All x where 1 <= x <= 3
1...3 # All x where 1 <= x < 3

# Regexp and Range objects define the normal == operator for testing equality. In addition,
# they also define the === operator for testing matching and membership.

# Ruby's case statement (like the switch statement of C or Java) matches its expression
# against each of the possible cases using ===, so this operator is often called
# the case equality operator.

# Determine US generation name based on birth year
# Case expression tests ranges with ===
birthyear = 2000
generation = case birthyear
             when 1946..1963
               'Baby boomer'
             when 1964..1976
               'Generation X'
             when 1978..2000
               'Generation Y'
             else
               # type code here
             end
puts generation

# A method to ask the user to confirm something
def are_you_sure?                   # define a method. Note question mark!
  loop do                           # Loop until we explicitly return
    print 'Are you sure? [y/n]'     # Ask the user a question
    response = gets                 # Get her answer
    case response                   # Begin case conditional
    when /^[yY]/                    # If response begins with y or Y
      return true                   # Return true from the method
    when /^[nN]/, /^$/              # If response begins with n, N or if is empty
      return false                  # Return false
    else
      # type code here
    end
  end
end

confirmation = are_you_sure?
puts confirmation
