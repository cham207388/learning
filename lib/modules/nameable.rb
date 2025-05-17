# frozen_string_literal: true

module Nameable
  attr_accessor :first_name, :last_name, :age, :email

  def initialize(first_name, last_name, age, email)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @email = email
    validate!
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def initial_and_last_name
    "#{get_initial(first_name)} #{last_name}"
  end

  private

  def get_initial(name)
    "#{name[0]}."
  end

  def validate!
    raise ArgumentError, 'First name cannot be empty' if first_name.nil? || first_name.strip.empty?
    raise ArgumentError, 'Last name cannot be empty' if last_name.nil? || last_name.strip.empty?
    raise ArgumentError, 'Email must be a valid email' unless email&.match?(/\A[^@\s]+@[^@\s]+\z/)
    raise ArgumentError, 'Age cannot be less than 0' if age.nil? || age.negative?
    # raise ArgumentError, 'Password must be at least 6 characters' if password.nil? || password.length < 6
  end
end
