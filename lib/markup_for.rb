# encoding: utf-8
require "markup_for/version"
require "markup_for/markup"
require 'redcarpet'
require 'creole'
require 'wikicloth'
require 'rdoc'
require 'redcloth'

module MarkupFor
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
    def markup_for(column_name, markup)
      
      class_eval <<-EOV
      def #{column_name}_html
        ::MarkupFor::Markup.new.render (send :#{column_name}).to_s, :#{markup}
      end
      
      EOV
      
    end
    
  end
end

ActiveRecord::Base.class_eval { include MarkupFor }