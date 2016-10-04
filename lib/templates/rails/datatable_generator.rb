class DatatableGenerator < ::Rails::Generators::Base
      desc 'Creates a *_datatable model in the app/datatables directory.'
      source_root File.expand_path('../templates', __FILE__)
      # argument :name, :type => :string
       argument :name, :type => :string
       argument :name1, type: :array, default: [], banner: "action"
      def generate_datatable
        file_prefix = set_filename(name)
        @datatable_name = set_datatable_name(name)
        template 'datatable.rb', File.join(
          'app/datatables', "#{file_prefix}_datatable.rb"
        )
     copy_file "stylesheet.css", "public/stylesheets/#{file_name}.css" if options.stylesheet?
     template "layout.html.erb", "app/views/layouts/#{file_name}.html.erb"
      end

      private
     def file_name
       name.underscore
     end
      def set_filename(name)
        name.include?('_') ? name : name.to_s.underscore
      end

      def set_datatable_name(name)
        name.include?('_') ? build_name(name) : capitalize(name)
      end

      def build_name(name)
        pieces = name.split('_')
        pieces.map(&:titleize).join
      end

      def capitalize(name)
        return name if name[0] == name[0].upcase
        name.capitalize
      end
    end