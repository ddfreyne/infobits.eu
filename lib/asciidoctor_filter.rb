require 'asciidoctor'

class AsciidoctorFilter < Nanoc::Filter

  identifier :asciidoctor

  def run(content, params={})
    doc = Asciidoctor::Document.new(content)
    "<h1>" + doc.doctitle + "</h1>" + doc.render
  end

end
