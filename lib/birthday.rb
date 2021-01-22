class Birthday
  attr_reader :day, :month

  def initialize(day, month)
    @day = day
    @month = month
  end

  def check_birthday
    Time.now.day == @day && Time.now.month == @month
  end

  def days_until_birthday
    
  end

end
