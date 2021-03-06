class Page < ActiveRecord::Base
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail

  def _presentation
    "#{title}"
  end


  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :slug , "slug", :text_field ],
      [ :title , "title", :text_field ],
      [ :content , "content", :text_area_without_ckeditor ],
    ]
  end


  def self.not_accessible_through_html?
    false
  end

  def self.order_by_clause
    "title"
  end


end
