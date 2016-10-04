class DataGenerator < ::Rails::Generators::Base
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
      template "stylesheet.coffee", "app/assets/javascripts/#{file_name}s.coffee"
      template  "layout.html.erb", "app/views/#{file_name}s/index.html.erb"

      # Start ---this logic is to comment default index action querly example @ankurs = Ankur.all
       path = "app/controllers/#{file_name}s_controller.rb"
       line = "@#{file_name}s = #{@datatable_name}.all"
       gsub_file(path, /^(\s*)([^#|\n]*#{line})/, '\1# \2', *args)
       # End ---this logic is to comment default index action querly example @ankurs = Ankur.all

     # Start ---this logic is to append content in index action
      content = "
       respond_to do |format|
         format.html
         format.json { render json:#{@datatable_name}Datatable.new(view_context) }
        end"
      insert_into_file path, content, :after => "@#{file_name}s = #{@datatable_name}.all\n"
      end
     # Start ---this logic is to append content in index action
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
