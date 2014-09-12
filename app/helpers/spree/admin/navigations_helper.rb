module Spree::Admin::NavigationsHelper

  def tab(*args)
    options = {:label => args.first.to_s}

    # Return if resource is found and user is not allowed to :admin
    return '' if klass = klass_for(options[:label]) and cannot?(:admin, klass)

    if args.last.is_a?(Hash)
      options = options.merge(args.pop)
    end
    options[:route] ||=  "admin_#{args.first}"

    destination_url = options[:url] || spree.send("#{options[:route]}_path")
    titleized_label = Spree.t(options[:label], :default => options[:label], :scope => [:admin, :tab]).titleize

    css_classes = []

    if options[:icon]
      link = link_to_with_icon(options[:icon], titleized_label, destination_url)
      css_classes << 'tab-with-icon'
    else
      link = link_to(titleized_label, destination_url)
    end

    selected = if options[:match_path]
      request.fullpath.starts_with?("#{spree.root_path}admin#{options[:match_path]}")
    else
      args.include?(controller.controller_name.to_sym)
    end
    css_classes << 'selected' if selected

    if options[:css_class]
      css_classes << options[:css_class]
    end
    if ["configuration", "promotions", "Navigation"].include? options[:label]
      content_tag('li', link, :class => css_classes.join(' '), :style => 'width:14% !important')
    else
      content_tag('li', link, :class => css_classes.join(' '))
    end
  end
  
  def nav_name nav
    translation = nav.translations.order('updated_at').last
    translation ? translation.name : nav.name
  end
  
  def nav_value
    translation = @navigation.translations.where(locale: "en").first.try(:name)
    translation.present? ? translation : @navigation.name
  end
  
end