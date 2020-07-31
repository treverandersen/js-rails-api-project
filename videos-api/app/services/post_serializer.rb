class PostSerializer
  def initialize(post_object)
    @post = post_object
  end

  def to_serialized_json
    options = {
      include: {
        category: {
          only: [:name]
        },
        series: {
          only: [:name]
        }
      },
      except: [:updated_at],
    }
    @post.to_json(options)
  end
end
