module Monocle
  class VersionGenerator
    attr_reader :path, :view

    def initialize(path)
      @path = path
      @view = File.basename(path, ".sql")
    end

    def generate
      timestamp = File.open path, &:readline
      case timestamp
      when /^-- Timestamp:/
        # Get only the digits out of the timestamp line
        timestamp.gsub!(/[^\d]/, '')
        return "#{view}_#{timestamp}"
      when /^-- Drop/
        return :drop
      else
        fail "can't read timestamp of #{path}! Aborting..."
      end
    end
  end
end
