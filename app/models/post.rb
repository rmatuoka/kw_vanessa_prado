class Post < ActiveRecord::Base
  attr_accessible :title, :content, :publication, :author, :source, :published, :active
end
