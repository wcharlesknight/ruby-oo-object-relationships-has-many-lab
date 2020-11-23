class Author

    attr_reader :name

    def initialize(name)
        @name = name
        @posts = [] 
    end 

    def posts
        Post.all.select {|posts| posts.author == self}
    end 

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title) 
        new_post = Post.new(title)
        new_post.author =  self
        new_post.title = title
    end

    def self.post_count
        Post.all.count
    end 
end 