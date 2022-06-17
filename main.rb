require './app'
require 'pry'

def main
  binding.pry
  app = App.new
  app.run
end
