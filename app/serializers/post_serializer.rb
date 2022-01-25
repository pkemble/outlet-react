class PostSerializer
  include JSONAPI::Serializer
  attributes :title, :actiontext_content, :content_slug, :enclosure, :user_id, :notebook_id, :post_date

  attribute :post_date do | p |
    p.created_at.strftime('%m-%d-%Y')
  end

  attribute :actiontext_content do | p |
    p.content.to_s
  end

  attribute :content_slug do | p |
    p.content.to_s[0...130] + "..."
  end
end
