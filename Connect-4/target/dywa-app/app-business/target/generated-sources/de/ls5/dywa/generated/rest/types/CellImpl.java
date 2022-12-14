package de.ls5.dywa.generated.rest.types;

@com.fasterxml.jackson.annotation.JsonFilter("DIME_Selective_Filter")
@com.fasterxml.jackson.annotation.JsonIdentityInfo(generator = com.voodoodyne.jackson.jsog.JSOGGenerator.class)
@com.fasterxml.jackson.annotation.JsonTypeInfo(use = com.fasterxml.jackson.annotation.JsonTypeInfo.Id.CLASS, property = info.scce.dime.util.Constants.DYWA_RUNTIME_TYPE)
public class CellImpl extends info.scce.dime.rest.RESTBaseImpl implements Cell
 {

	private java.lang.Long
	 value;
	private boolean isvalueSet;
	
	@com.fasterxml.jackson.annotation.JsonProperty("value")
	@info.scce.dime.rest.JsonRenderIndicator("isvalueSet")
	@java.lang.Override
	public java.lang.Long
	 getvalue() {
		return this.value;
	}
	
	@com.fasterxml.jackson.annotation.JsonIgnore
	public boolean isvalueSet() {
		return this.isvalueSet;
	}

	@com.fasterxml.jackson.annotation.JsonProperty("value")
	@java.lang.Override
	public void setvalue(final java.lang.Long
	 value) {
		this.value = value;
		this.isvalueSet = true;
	}

	
}
