module ApplicationHelper
	  def truncate_and_link( text,options ={})
	    length = options[:length] || 512
	    return text if length.blank?
	    url = options[:url] || '#'
	    output = raw truncate(text, :length => length)
	    output += link_to('more', url) if text.size > length
	    output.html_safe
	  end
end
