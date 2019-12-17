require "nokogiri"
require "open-uri"
require "pry"


require "blog/version"
require_relative "blog/CLI"
require_relative "blog/Scraper"
require_relative "blog/Article"

module Blog
  class Error < StandardError; end
  # Your code goes here...
end
