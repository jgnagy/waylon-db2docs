# frozen_string_literal: true

require "waylon/core"
require_relative "db2docs/version"

module Waylon
  module Db2docs
    class Error < StandardError; end
    # Your code goes here...
  end
end

require_relative "skills/db2docs"
