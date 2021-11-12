class TryOut
  attr_accessor :first_name
  attr_reader :middle_name, :last_name

  def initialize(first_name, middle_name = nil, last_name)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @full_name ||= [first_name, middle_name, last_name].compact.join(" ")
  end

  def upcase_full_name
    full_name.upcase
  end

  def upcase_full_name!
    full_name.upcase!
  end
end
