module Router
  class Base

    def initialize(base_url:, &blk)
      @base_url = base_url
      @blk = blk
      instance_eval(&blk) if blk
    end

    def scope(path, &blk)
      path_prefix = @path_prefix
      name_prefix = @name_prefix

      begin
        @path_prefix = @path_prefix.join(path.to_s)
        @name_prefix = @name_prefix.join(path.to_s)
        instance_eval(&blk)
      ensure
        @path_prefix = path_prefix
        @name_prefix = name_prefix
      end
    end

  end
end
