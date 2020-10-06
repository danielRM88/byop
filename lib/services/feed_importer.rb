class FeedImporter
  def initialize(link, source)
    @link = link
    @source = source
  end

  def call
    # import feed - design choice: only one feed in the app at a given time.
    Feed.destroy_all

    importer = Importers::ImporterFactory.instance(@source)
    importer.import(@link)
  end
end
