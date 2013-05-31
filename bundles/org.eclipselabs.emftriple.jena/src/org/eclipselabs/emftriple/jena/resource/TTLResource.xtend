package org.eclipselabs.emftriple.jena.resource

import com.hp.hpl.jena.rdf.model.Model
import java.io.OutputStream
import org.eclipselabs.emftriple.RDFFormat
import org.eclipselabs.emftriple.jena.io.XMLWriter
import org.eclipse.emf.common.util.URI

class TTLResource extends RDFResource {
	
	new() {
		super()
	}
	
	new(URI uri) {
		super(uri)
	}
	
	override protected write(OutputStream stream, Model graph) {
		XMLWriter::write(stream, graph, RDFFormat::TURTLE)
	}
	
}
