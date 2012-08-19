class TopicArticlesController < InheritedResources::Base
  main_nav_highlight :topics
  sec_nav_highlight :articles
  actions :index, :show

  belongs_to :topic

  before_filter :get_topic

  protected

  def get_topic
    @topic ||= parent

    @categories ||= TopicArticle.category_mappings
  end
end
