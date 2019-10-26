class Facebook
  class << self
    def fbgraph(token)
      @fbgraph ||= Koala::Facebook::API.new(token)
    end

    def get_object(token, id, args = {}, options = {}, &block)
      graph = Koala::Facebook::API.new(token)
      user = graph.get_object("me")
      graph.get_connections(user['id'], id)
    end
  end
end
