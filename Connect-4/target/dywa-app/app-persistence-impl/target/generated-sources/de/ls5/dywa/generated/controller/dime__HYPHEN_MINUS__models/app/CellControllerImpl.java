/* generated by info.scce.dime.generator.scheme.ControllerGenerator */
package de.ls5.dywa.generated.controller.dime__HYPHEN_MINUS__models.app;

import de.ls5.dywa.generated.entity.dime__HYPHEN_MINUS__models.app.Cell;
import de.ls5.dywa.generated.entity.dime__HYPHEN_MINUS__models.app.CellImpl;
import de.ls5.dywa.generated.entity.dime__HYPHEN_MINUS__models.app.CellSearch;

import java.util.Arrays;
import java.util.stream.Collectors;

@javax.enterprise.context.RequestScoped
public class CellControllerImpl implements CellController {
	private static final org.slf4j.Logger LOGGER =  org.slf4j.LoggerFactory.getLogger(CellController.class);

	@javax.persistence.PersistenceContext
	private javax.persistence.EntityManager entityManager;

	@javax.inject.Inject
	private de.ls5.dywa.generated.util.DomainFileController domainFileController;

@javax.inject.Inject //referenceMap
private de.ls5.dywa.generated.controller.dime__HYPHEN_MINUS__models.app.ColumnController columnController;

    
    @Override
	public Cell read(final java.lang.Long id) {

		 Cell result = entityManager.find(CellImpl.class, id);
		 	// delegate read until entity is found;
		return result;
	}

    @Override
	public java.util.List<Cell> findByProperties(Cell searchObject) {
		if (searchObject instanceof CellSearch) {
			CellSearch casted = (CellSearch) searchObject;

			java.util.List<Cell> list = buildSimpleQuery(casted.queryAttributes(), casted.queryListAttributes(), true).getResultList().stream().map(Cell::casted).collect(Collectors.toList());

			return list;
		} else {
			throw new java.lang.IllegalArgumentException("Search object required.");
		}
	}

	@Override
	public Cell findFirstByProperties(Cell searchObject) {
		if (searchObject instanceof CellSearch) {
			CellSearch casted = (CellSearch) searchObject;
			java.util.List<Cell> results = new java.util.ArrayList<Cell>();
			results.addAll(buildSimpleQuery(casted.queryAttributes(), casted.queryListAttributes(),false).setMaxResults(1).getResultList());
			return results.isEmpty() ? null : results.get(0);
		} else throw new java.lang.IllegalArgumentException("Search object required.");
	}

	@Override
	public java.util.Set<Cell> fetch() {
		return new java.util.HashSet<Cell>(buildSimpleQuery(null, null,false).getResultList());
	}

	@Override
	public java.util.Set<Cell> fetchByName(final java.lang.String name) {
		java.util.Map<String, Object> map = new java.util.HashMap<>();
		map.put("name_", name);
		java.util.HashSet<Cell> result = new java.util.HashSet<>(buildSimpleQuery(map, null,false).getResultList());
		return result;
	}

		@Override
		public Cell create(java.lang.String name) {
			CellImpl entity = new CellImpl();
			entity.setDywaName(name);
			entityManager.persist(entity);
			return entity;
		}

		@Override
		public Cell createTransient(java.lang.String name) {
			CellImpl entity = new CellImpl();
			entity.setDywaName(name);
			return entity;
		}

	@Override
	public Cell createSearchObject(java.lang.String name) {
		return new CellSearch(name);
	}

	@Override
	public java.util.Set<Cell> fetchWithSubtypes() {
		java.util.Set<Cell> list = buildSimpleQuery(null,null, true).getResultList().stream().map(Cell::casted).collect(Collectors.toSet());

		return list;
	}

	@Override
	public void delete(Cell entity) {

		if (entity instanceof CellImpl) {
			CellImpl impl = (CellImpl) entity;
			entityManager.remove(impl);
		}
		// delegate delete
	}
	
	@Override
	public void deleteWithIncomingReferences(Cell entityToDelete) {

		
		// Delete references from type Column
			de.ls5.dywa.generated.entity.dime__HYPHEN_MINUS__models.app.Column searchColumn;
			searchColumn = new de.ls5.dywa.generated.entity.dime__HYPHEN_MINUS__models.app.ColumnSearch();	
				searchColumn.setcells_Cell(java.util.Arrays.asList(entityToDelete));
			for (de.ls5.dywa.generated.entity.dime__HYPHEN_MINUS__models.app.Column queryResult : this.columnController.findByProperties(searchColumn)) {
				queryResult.getcells_Cell().remove(entityToDelete);
			}
		delete(entityToDelete);
	}
	
	private javax.persistence.TypedQuery<CellImpl> buildSimpleQuery(java.util.Map<String, Object> attributeMap, java.util.Map<String, java.util.List> listAttributeMap, boolean withInherited) {
		java.lang.StringBuilder queryStr = new java.lang.StringBuilder("SELECT e FROM CellImpl e WHERE (true="+withInherited+" OR e.inheritance_ = false)");
		if (attributeMap != null) {
			for (java.util.Map.Entry<String, Object> entry : attributeMap.entrySet()) {
				queryStr.append(" AND e." + entry.getKey() + " = :" + entry.getKey().replaceAll("\\W", ""));
			}
		}
		if (listAttributeMap != null) {
			for (java.util.Map.Entry<String, java.util.List> entry : listAttributeMap.entrySet()) {
				if (entry.getValue() == null || entry.getValue().isEmpty()) {
					queryStr.append(" AND e." + entry.getKey() + " IS EMPTY");
				} else {
					String prefix = entry.getKey().replaceAll("\\W", "");
					for (int i = 0, s = entry.getValue().size(); i < s; i++) {
						queryStr.append(" AND :" + prefix + i + " MEMBER OF e." + entry.getKey());
					}
				}
			}
		}
		queryStr.append(" ORDER BY id_ DESC");
		javax.persistence.TypedQuery<CellImpl> query = entityManager.createQuery(queryStr.toString(), CellImpl.class);
		if (attributeMap != null) {
			for (java.util.Map.Entry<String, Object> entry : attributeMap.entrySet()) {
				query.setParameter(entry.getKey().replaceAll("\\W", ""), entry.getValue());
			}
		}
		if (listAttributeMap != null) {
			for (java.util.Map.Entry<String, java.util.List> entry : listAttributeMap.entrySet()) {
				if (entry.getValue() != null && !entry.getValue().isEmpty()) {
					String prefix = entry.getKey().replaceAll("\\W", "");
					for (int i = 0, s = entry.getValue().size(); i < s; i++) {
						query.setParameter(prefix + i, entry.getValue().get(i));
					}
				}
			}
		}
		query.setHint(org.hibernate.jpa.QueryHints.HINT_CACHEABLE,true);
		return query;
	}
}
