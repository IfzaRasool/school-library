def Book
    attr_accessor :title, :author
    attr_reader :title, :author
    def initialize(title,author)
    @title=title
    @author=author
end