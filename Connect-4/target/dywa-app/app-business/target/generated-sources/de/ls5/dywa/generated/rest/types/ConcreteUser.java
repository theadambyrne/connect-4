package de.ls5.dywa.generated.rest.types;

@com.fasterxml.jackson.annotation.JsonFilter("DIME_Selective_Filter")
@com.fasterxml.jackson.annotation.JsonIdentityInfo(generator = com.voodoodyne.jackson.jsog.JSOGGenerator.class)
@com.fasterxml.jackson.annotation.JsonTypeInfo(use = com.fasterxml.jackson.annotation.JsonTypeInfo.Id.CLASS, property = info.scce.dime.util.Constants.DYWA_RUNTIME_TYPE)
public interface ConcreteUser extends info.scce.dime.rest.RESTBaseType  {

	BaseUser
	 getbaseUser();
	boolean isbaseUserSet();

	void setbaseUser(final BaseUser
	 baseUser);
	ConcreteUser
	 getdywaSwitchedTo();
	boolean isdywaSwitchedToSet();

	void setdywaSwitchedTo(final ConcreteUser
	 dywaSwitchedTo);

	public static ConcreteUser fromDywaEntity(final de.ls5.dywa.generated.entity.models.app.ConcreteUser entity, info.scce.dime.rest.ObjectCache objectCache) {
	
		final ConcreteUser result;
	
		if (entity instanceof de.ls5.dywa.generated.entity.models.app.ConcreteUser) {
			result = new de.ls5.dywa.generated.rest.types.ConcreteUserImpl();
		}
	 else { throw new java.lang.IllegalArgumentException("Unknown type"); } 
		objectCache.putRestTo(entity, result);
	
		return result;
	}
}
