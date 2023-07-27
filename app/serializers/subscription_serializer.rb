class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :title, :price, :frequency, :status, :teas

  attribute :status do |x|
    x.status == 0 ? 'active' : 'cancelled'
  end

  attribute :teas do |x|
    x.teas.map do |tea|
      {name: tea.title}
    end
  end
end
