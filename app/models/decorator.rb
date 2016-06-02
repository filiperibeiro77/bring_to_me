module Decorator
  attr_reader :model

  def initialize(model)
    @model = model
  end

  def method_missing(meth, *args)
    if @model.respond_to?(meth)
      @model.send(meth, *args)
    else
      super
    end
  end

  def respond_to?(meth)
    @model.respond_to?(meth)
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def decorate(object)
      if object.is_a? Enumerable
        object.map {|obj| self.new(obj)}
      else
        self.new(object)
      end
    end
  end
end
