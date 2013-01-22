class TopicVideo < TopicResource
  include Mongoid::MagicCounterCache

  field :source
  field :widget
  field :cover
  field :url

  mount_uploader :cover, PhotoUploader

  validates :source, :cover, :widget, presence: true

  # There will be a field 'posts_count' in post attributes
  counter_cache :topic, using: 'videos'
end