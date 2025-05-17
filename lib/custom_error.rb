# frozen_string_literal: true

class CustomError < StandardError

  def message
    super()
    'Custom error message'
  end
end
