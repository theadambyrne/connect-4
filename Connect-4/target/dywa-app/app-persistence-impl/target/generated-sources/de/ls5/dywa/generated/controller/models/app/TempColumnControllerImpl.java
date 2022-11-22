/* generated by info.scce.dime.generator.scheme.ControllerGenerator */
package de.ls5.dywa.generated.controller.models.app;

import de.ls5.dywa.generated.entity.models.app.TempColumn;
import de.ls5.dywa.generated.entity.models.app.TempColumnImpl;
import de.ls5.dywa.generated.entity.models.app.TempColumnSearch;

import java.util.Arrays;
import java.util.stream.Collectors;

@javax.enterprise.context.RequestScoped
public class TempColumnControllerImpl implements TempColumnController {
	private static final org.slf4j.Logger LOGGER =  org.slf4j.LoggerFactory.getLogger(TempColumnController.class);

	@javax.persistence.PersistenceContext
	private javax.persistence.EntityManager entityManager;

	@javax.inject.Inject
	private de.ls5.dywa.generated.util.DomainFileController domainFileController;

    
    @Override
	public TempColumn read(final java.lang.Long id) {

		 TempColumn result = entityManager.find(TempColumnImpl.class, id);
		 	// delegate read until entity is found;
		return result;
	}

    @Override
	public java.util.List<TempColumn> findByProperties(TempColumn searchObject) {
		if (searchObject instanceof TempColumnSearch) {
			TempColumnSearch casted = (TempColumnSearch) searchObject;

			java.util.List<TempColumn> list = buildSimpleQuery(casted.queryAttributes(), casted.queryListAttributes(), true).getResultList().stream().map(TempColumn::casted).collect(Collectors.toList());

			return list;
		} else {
			throw new java.lang.IllegalArgumentException("Search object required.");
		}
	}

	@Override
	public TempColumn findFirstByProperties(TempColumn searchObject) {
		if (searchObject instanceof TempColumnSearch) {
			TempColumnSearch casted = (TempColumnSearch) searchObject;
			java.util.List<TempColumn> results = new java.util.ArrayList<TempColumn>();
			results.addAll(buildSimpleQuery(casted.queryAttributes(), casted.queryListAttributes(),false).setMaxResults(1).getResultList());
			return results.isEmpty() ? null : results.get(0);
		} else throw new java.lang.IllegalArgumentException("Search object required.");
	}

	@Override
	public java.util.Set<TempColumn> fetch() {
		return new java.util.HashSet<TempColumn>(buildSimpleQuery(null, null,false).getResultList());
	}

	@Override
	public java.util.Set<TempColumn> fetchByName(final java.lang.String name) {
		java.util.Map<String, Object> map = new java.util.HashMap<>();
		map.put("name_", name);
		java.util.HashSet<TempColumn> result = new java.util.HashSet<>(buildSimpleQuery(map, null,false).getResultList());
		return result;
	}

		@Override
		public TempColumn create(java.lang.String name) {
			TempColumnImpl entity = new TempColumnImpl();
			entity.setDywaName(name);
			entityManager.persist(entity);
			return entity;
		}

		@Override
		public TempColumn createTransient(java.lang.String name) {
			TempColumnImpl entity = new TempColumnImpl();
			entity.setDywaName(name);
			return entity;
		}

	@Override
	public TempColumn createSearchObject(java.lang.String name) {
		return new TempColumnSearch(name);
	}

	@Override
	public java.util.Set<TempColumn> fetchWithSubtypes() {
		java.util.Set<TempColumn> list = buildSimpleQuery(null,null, true).getResultList().stream().map(TempColumn::casted).collect(Collectors.toSet());

		return list;
	}

	@Override
	public void delete(TempColumn entity) {

		if (entity instanceof TempColumnImpl) {
			TempColumnImpl impl = (TempColumnImpl) entity;
			entityManager.remove(impl);
		}
		// delegate delete
	}
	
	@Override
	public void deleteWithIncomingReferences(TempColumn entityToDelete) {

		delete(entityToDelete);
	}
	
	private javax.persistence.TypedQuery<TempColumnImpl> buildSimpleQuery(java.util.Map<String, Object> attributeMap, java.util.Map<String, java.util.List> listAttributeMap, boolean withInherited) {
		java.lang.StringBuilder queryStr = new java.lang.StringBuilder("SELECT e FROM TempColumnImpl e WHERE (true="+withInherited+" OR e.inheritance_ = false)");
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
		javax.persistence.TypedQuery<TempColumnImpl> query = entityManager.createQuery(queryStr.toString(), TempColumnImpl.class);
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