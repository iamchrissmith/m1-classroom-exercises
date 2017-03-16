require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative "strings_well_formed"

class ValidatorTest < Minitest::Test
  def test_class_exists
    v = StringValidator.new
    assert v
  end

  def test_parens_valid
    v = StringValidator.new
    assert v.validate("(abc)")
  end
  def test_parens_invalid
    v = StringValidator.new
    assert !v.validate(")(abc)")
  end
  def test_parens_not_closed_invalid
    v = StringValidator.new
    assert !v.validate("(abc")
  end
  def test_no_brackets_valid
    v = StringValidator.new
    assert v.validate("abc")
  end
  def test_mixed_brackets_invalid
    v = StringValidator.new
    assert !v.validate("{ab(c})")
  end
  def test_mixed_valid
    v = StringValidator.new
    assert v.validate("([{}[]])")
  end
  def test_unclosed_bracket_invalid
    v = StringValidator.new
    assert !v.validate("()[")
  end
  def test_mixed_brackets_invalid
    v = StringValidator.new
    assert !v.validate("([)]")
  end
  def test_custom_matches
    v = StringValidator.new({"("=>")","{"=>"}"})
    assert v.validate("({})")
  end
end

=begin
find first open bracket
save character location of first bracket
reverse the string
search backwards to find the "first" closing bracket
save character location of first bracket
if valid
take string between first and closing bracket locations
repeat until no more brackets found
=end
