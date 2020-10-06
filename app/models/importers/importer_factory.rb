class Importers::ImporterFactory
  def self.instance(source)
    case source
    when 'podigee'
      return Importers::PodigeeImporter.new
    else
      StandardError.new("No importer found for #{source}")
    end
  end
end
