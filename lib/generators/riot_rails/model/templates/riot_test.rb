require 'test_helper'

context "A <%= class_name %>" do
  asserts("1 + 1") { 1 + 1 }.equals{2}
end
