/* generated by info.scce.dime.generator.scheme.ControllerGenerator */
package de.ls5.dywa.generated.controller.dime__HYPHEN_MINUS__models.app;

import de.ls5.dywa.generated.entity.dime__HYPHEN_MINUS__models.app.Column;

public interface ColumnController {

	Column read(java.lang.Long id);

	java.util.List<Column> findByProperties(Column searchObject);

	Column findFirstByProperties(Column searchObject);

	java.util.Set<Column> fetch();

	java.util.Set<Column> fetchByName(java.lang.String name);

	Column create(java.lang.String name);
	Column createTransient(java.lang.String name);

	Column createSearchObject(java.lang.String name);

	java.util.Set<Column> fetchWithSubtypes();

	void delete(Column entity);

	void deleteWithIncomingReferences(Column entity);
}
