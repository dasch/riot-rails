require 'generators/riot_rails'

module RiotRails
  module Generators
    class ModelGenerator < Base
      argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"
      class_option :fixture, :type => :boolean

      def create_test_file
        template File.join(File.dirname(__FILE__), 'templates', 'riot_test.rb'), File.join('test/unit', class_path, "#{file_name}_test.rb")
      end

      hook_for :fixture_replacement

      def create_fixture_file
        if options[:fixture] && options[:fixture_replacement].nil?
          template File.join(File.dirname(__FILE__), 'templates', 'fixtures.yml'), File.join('test/fixtures', "#{table_name}.yml")
        end
      end
    end
  end
end
