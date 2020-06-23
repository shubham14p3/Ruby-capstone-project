# require 'colorize'

module EmptyComment
  private

  def empty_comment(line_content, line_index, error_messages)
    matching_condition = /\/\*\s*?\*\//
	error_messages << "Empty comment detected on #{line_index + 1}" if matching_condition =~ line_content
																	# .colorize(:red)				
  end

  public

  def empty_comment_check(line_content, line_index, error_messages)
    empty_comment(line_content, line_index, error_messages)
  end
end
