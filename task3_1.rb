# frozen_string_literal: true

require 'yaml'
require 'fileutils'
require 'time'

file_path = "config.yaml"

config = YAML.load_file(file_path)

config['last_run_at'] = Time.now.utc.iso8601

temp = "#{file_path}.tmp"

File.open(temp, "w") { |f| YAML.dump(config, f) }

FileUtils.mv(temp, file_path)
