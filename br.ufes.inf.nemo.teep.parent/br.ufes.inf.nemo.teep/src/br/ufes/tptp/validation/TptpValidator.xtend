package br.ufes.tptp.validation

import br.ufes.inf.nemo.teep.tptp.AnnotatedFormula
import br.ufes.inf.nemo.teep.tptp.Specification
import br.ufes.inf.nemo.teep.tptp.TptpPackage
import java.util.HashSet
import org.eclipse.xtext.validation.Check
import br.ufes.inf.nemo.teep.validation.AbstractTptpValidator

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class TptpValidator extends AbstractTptpValidator {

// TODO: 	every variable must be bound, otherwise it is a constant
	
	@Check
	def checkDuplicatedNames(Specification s) {
		var names = new HashSet<String>();	
		for (AnnotatedFormula f : s.sentences.filter[it instanceof AnnotatedFormula].map[it as AnnotatedFormula]  )
		{
			if(names.contains(f.name))
				warning('Duplicated Formula Name: \''+f.name+"'", f, TptpPackage.Literals.ANNOTATED_FORMULA__NAME)	
			else names.add(f.name);	
		}
	}
}
	