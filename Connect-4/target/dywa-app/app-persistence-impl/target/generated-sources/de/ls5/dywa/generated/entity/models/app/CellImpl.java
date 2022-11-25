/* generated by info.scce.dime.generator.scheme.ModelGenerator */
package de.ls5.dywa.generated.entity.models.app;
@javax.persistence.Entity
@javax.persistence.Cacheable
@org.hibernate.annotations.Cache(usage = org.hibernate.annotations.CacheConcurrencyStrategy.READ_WRITE)
@javax.persistence.Table(name = "t_Cell__n5bpygmoee2sl80", indexes={@javax.persistence.Index(columnList="meta_inheritance")})
@de.ls5.dywa.annotations.IdRef(id = 4L)
public class CellImpl implements Cell {
	@javax.persistence.Id
	@javax.persistence.GeneratedValue(strategy = javax.persistence.GenerationType.SEQUENCE)
	@javax.persistence.Column(name = "meta_id")
	private long id_;
	
	/* DYWA METADATA START */
	@javax.persistence.Column(name = "meta_name")
	private java.lang.String name_;
	
	@javax.persistence.Column(name = "meta_version")
	private long version_;
	
	@javax.persistence.Column(name = "meta_inheritance")
	private boolean inheritance_ = false;


	/* DYWA METADATA END */

	
	/* MAIN ATTRIBUTES START */
	@de.ls5.dywa.annotations.IdRef(id = 19L)
	@javax.persistence.Column(name = "a_Value__qoan0wmoee2sl80", columnDefinition="bigint")
	private java.lang.Long value;
	
	/* MAIN ATTRIBUTES END */
	
	/* IMPLICIT ATTRIBUTES START */
	/* IMPLICIT ATTRIBUTES END */
	
	/* INHERITED MODELS START */
	/* INHERITED MODELS END */

	/* INHERITED ABSTRACT MODELS START */
	/* INHERITED ABSTRACT MODELS END */
	
	/* ADDITIONAL INHERITED MODELS START */
	/* ADDITIONAL INHERITED MODELS END */
	
	// Constructors
	public CellImpl() {
	}



	// EXTENSION ATTRIBUTES

	public long getId_() {
		return this.id_;
	}

	public void setId_(final long id) {
		this.id_ = id;
	}

	@java.lang.Override
	public java.lang.String getDywaName() {
		return this.name_;
	}

	@java.lang.Override
	public void setDywaName(final java.lang.String name) {
		this.name_ = name;
	}

	// return existing id on runtime
	@java.lang.Override
	public long getDywaId() {
		return this.id_;
	}

	@java.lang.Override
	public long getDywaVersion() {
		return this.version_;
	}

	@java.lang.Override
	public void setDywaVersion(final long version) {
		this.version_ = version;
	}
	
	@java.lang.Override
	public java.lang.Long getvalue() {
		return this.value;
	}
	
	@java.lang.Override
	public void setvalue(java.lang.Long object) {
		this.value = object;
	}
	
	
	@java.lang.Override
	public String toString() {
		return "Cell[id: " + this.id_ + ", name: " + this.name_ + "]";
	}
}

