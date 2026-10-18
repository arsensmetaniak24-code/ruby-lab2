# frozen_string_literal: true

require 'fileutils'

Dir.glob("*.txt").each { |f| FileUtils.mv(f, "#{Time.now.utc.strftime('%Y-%m-%d')}_#{f}") }