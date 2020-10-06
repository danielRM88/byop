class Importers::PodigeeImporter
  include ::HTTParty

  def import(link)
    xml = ::HTTParty.get(link).body
    podigee_feed = Feedjira.parse(xml)

    feed = Feed.create!({
      title: podigee_feed.title,
      language: podigee_feed.language,
      image_url: podigee_feed.image.url,
      generator: 'Podigee',
      published_date: podigee_feed.last_built
    })

    podigee_feed.entries.each do |item|
      feed.items.create!({
        title: item.title,
        description: item.summary,
        published_date: item.published,
        link: item.url,
        episode: item.itunes_episode.to_i,
        keywords: item.itunes_keywords,
        duration: item.itunes_duration.to_f,
        link_to_audio: item.enclosure_url
      })
    end
  end
end
