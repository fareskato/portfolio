# To generate this: rails g migration add_topic_reference_to_blogs topic:references
class AddTopicReferenceToBlog < ActiveRecord::Migration[5.0]
  def change
    add_reference :blogs, :topic, foreign_key: true
  end
end
