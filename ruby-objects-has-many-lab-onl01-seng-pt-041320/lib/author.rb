require 'pry'
class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all
    end

    def add_post(post) # post is "Hello World", self is "Betty"
        post.author = self
        #binding.pry
    end

    def add_post_by_title(post_title) # self is "Betty" instance, post_title is "My Great Blog Post", new_post is post_title's instance
        new_post = Post.new(post_title)
        new_post.author = self
        #binding.pry
    end

    def self.post_count
        Post.all.count
    end
end