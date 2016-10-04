module ApplicationHelper
 def full_title(page_title)
  base_title = "Healthelife"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
 end

 def hello
puts "hello"
 end
end
