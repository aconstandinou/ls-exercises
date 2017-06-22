class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    message_size = @message.size + 2
    @horizontal_rule = '+' + ('-' * message_size) + '+'
  end

  def empty_line
    message_size = @message.size + 2
    @empty_line = '|' + (' ' * message_size) + '|'
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner
