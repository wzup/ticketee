# coding: utf-8

Cucumber::Rails::World.class_exec do
  class << self
    # нет, не здесь. здесь, если статический создавать, A.hello
    # а надо A.new.hello. т.е. инстанса метод
    # поэтому так как ниже
  end
  
  def path_to(page_name)
    case page_name
    when /the home\s?page/
      '/'
    when /New Project/
      '/projects/new'
    end
  end
end

# module NavigationHelpers
#   def path_to(page_name)
#     case page_name
#     when /the home\s?page/
#       '/'
#     end
#   end
# end