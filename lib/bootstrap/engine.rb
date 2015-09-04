module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer 'bootstrap.assets' do |app|
        %w(stylesheets javascripts fonts).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
