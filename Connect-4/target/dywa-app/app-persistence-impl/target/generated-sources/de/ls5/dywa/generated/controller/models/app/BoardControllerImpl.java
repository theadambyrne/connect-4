/* generated by info.scce.dime.generator.scheme.ControllerGenerator */
package de.ls5.dywa.generated.controller.models.app;

import de.ls5.dywa.generated.entity.models.app.Board;
import de.ls5.dywa.generated.entity.models.app.BoardImpl;
import de.ls5.dywa.generated.entity.models.app.BoardSearch;

import java.util.Arrays;
import java.util.stream.Collectors;

@javax.enterprise.context.RequestScoped
public class BoardControllerImpl implements BoardController {
	private static final org.slf4j.Logger LOGGER =  org.slf4j.LoggerFactory.getLogger(BoardController.class);

	@javax.persistence.PersistenceContext
	private javax.persistence.EntityManager entityManager;

	@javax.inject.Inject
	private de.ls5.dywa.generated.util.DomainFileController domainFileController;

@javax.inject.Inject //referenceMap
private de.ls5.dywa.generated.controller.models.app.GameController gameController;

    
    @Override
	public Board read(final java.lang.Long id) {

		 Board result = entityManager.find(BoardImpl.class, id);
		 	// delegate read until entity is found;
		return result;
	}

    @Override
	public java.util.List<Board> findByProperties(Board searchObject) {
		if (searchObject instanceof BoardSearch) {
			BoardSearch casted = (BoardSearch) searchObject;

			java.util.List<Board> list = buildSimpleQuery(casted.queryAttributes(), casted.queryListAttributes(), true).getResultList().stream().map(Board::casted).collect(Collectors.toList());

			return list;
		} else {
			throw new java.lang.IllegalArgumentException("Search object required.");
		}
	}

	@Override
	public Board findFirstByProperties(Board searchObject) {
		if (searchObject instanceof BoardSearch) {
			BoardSearch casted = (BoardSearch) searchObject;
			java.util.List<Board> results = new java.util.ArrayList<Board>();
			results.addAll(buildSimpleQuery(casted.queryAttributes(), casted.queryListAttributes(),false).setMaxResults(1).getResultList());
			return results.isEmpty() ? null : results.get(0);
		} else throw new java.lang.IllegalArgumentException("Search object required.");
	}

	@Override
	public java.util.Set<Board> fetch() {
		return new java.util.HashSet<Board>(buildSimpleQuery(null, null,false).getResultList());
	}

	@Override
	public java.util.Set<Board> fetchByName(final java.lang.String name) {
		java.util.Map<String, Object> map = new java.util.HashMap<>();
		map.put("name_", name);
		java.util.HashSet<Board> result = new java.util.HashSet<>(buildSimpleQuery(map, null,false).getResultList());
		return result;
	}

		@Override
		public Board create(java.lang.String name) {
			BoardImpl entity = new BoardImpl();
			entity.setDywaName(name);
			entityManager.persist(entity);
			return entity;
		}

		@Override
		public Board createTransient(java.lang.String name) {
			BoardImpl entity = new BoardImpl();
			entity.setDywaName(name);
			return entity;
		}

	@Override
	public Board createSearchObject(java.lang.String name) {
		return new BoardSearch(name);
	}

	@Override
	public java.util.Set<Board> fetchWithSubtypes() {
		java.util.Set<Board> list = buildSimpleQuery(null,null, true).getResultList().stream().map(Board::casted).collect(Collectors.toSet());

		return list;
	}

	@Override
	public void delete(Board entity) {

		if (entity instanceof BoardImpl) {
			BoardImpl impl = (BoardImpl) entity;
			entityManager.remove(impl);
		}
		// delegate delete
	}
	
	@Override
	public void deleteWithIncomingReferences(Board entityToDelete) {

		
		// Delete references from type Game
			de.ls5.dywa.generated.entity.models.app.Game searchGame;
			searchGame = new de.ls5.dywa.generated.entity.models.app.GameSearch();	
				searchGame.setboard(entityToDelete);
			for (de.ls5.dywa.generated.entity.models.app.Game queryResult : this.gameController.findByProperties(searchGame)) {
				queryResult.setboard(null);
			}
		delete(entityToDelete);
	}
	
	private javax.persistence.TypedQuery<BoardImpl> buildSimpleQuery(java.util.Map<String, Object> attributeMap, java.util.Map<String, java.util.List> listAttributeMap, boolean withInherited) {
		java.lang.StringBuilder queryStr = new java.lang.StringBuilder("SELECT e FROM BoardImpl e WHERE (true="+withInherited+" OR e.inheritance_ = false)");
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
		javax.persistence.TypedQuery<BoardImpl> query = entityManager.createQuery(queryStr.toString(), BoardImpl.class);
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
