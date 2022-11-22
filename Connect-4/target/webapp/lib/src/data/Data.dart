import 'dart:core' as core;
import 'dart:convert';
import '../models/FileReference.dart';
import '../models/Selectives.dart';
import '../commons/Exceptions.dart';

class DataCastUtil {
	
	const DataCastUtil();
	static ConcreteUser castToConcreteUser(core.Object o) => o as ConcreteUser;
	static DIMEList<ConcreteUser> castToListConcreteUser(DIMEList<core.Object> os) => new DIMEList.from(os.cast<ConcreteUser>());
	static DIMEList<ConcreteUser> newListConcreteUser() => new DIMEList<ConcreteUser>();
	
	static BaseUser castToBaseUser(core.Object o) => o as BaseUser;
	static DIMEList<BaseUser> castToListBaseUser(DIMEList<core.Object> os) => new DIMEList.from(os.cast<BaseUser>());
	static DIMEList<BaseUser> newListBaseUser() => new DIMEList<BaseUser>();
	
	static Board castToBoard(core.Object o) => o as Board;
	static DIMEList<Board> castToListBoard(DIMEList<core.Object> os) => new DIMEList.from(os.cast<Board>());
	static DIMEList<Board> newListBoard() => new DIMEList<Board>();
	
	static Column castToColumn(core.Object o) => o as Column;
	static DIMEList<Column> castToListColumn(DIMEList<core.Object> os) => new DIMEList.from(os.cast<Column>());
	static DIMEList<Column> newListColumn() => new DIMEList<Column>();
	
	static Cell castToCell(core.Object o) => o as Cell;
	static DIMEList<Cell> castToListCell(DIMEList<core.Object> os) => new DIMEList.from(os.cast<Cell>());
	static DIMEList<Cell> newListCell() => new DIMEList<Cell>();
	
	static TempColumn castToTempColumn(core.Object o) => o as TempColumn;
	static DIMEList<TempColumn> castToListTempColumn(DIMEList<core.Object> os) => new DIMEList.from(os.cast<TempColumn>());
	static DIMEList<TempColumn> newListTempColumn() => new DIMEList<TempColumn>();
}
class ConcreteUser extends BaseModel
{
	core.bool _baseUserHasBeenSet = false;
	core.bool baseUserHasBeenChanged() => _baseUserHasBeenSet||(_baseUser==null?false:_baseUser.hasChanged()) ;
	BaseUser _baseUser;
	core.bool _dywaSwitchedToHasBeenSet = false;
	core.bool dywaSwitchedToHasBeenChanged() => _dywaSwitchedToHasBeenSet||(_dywaSwitchedTo==null?false:_dywaSwitchedTo.hasChanged()) ;
	ConcreteUser _dywaSwitchedTo;
	
	static ConcreteUser fromId(core.int id) {
		var m = new ConcreteUser();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'baseUser': this.baseUser, 
	  'dywaSwitchedTo': this.dywaSwitchedTo
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'baseUser': this.baseUser = value; return;
	  case 'dywaSwitchedTo': this.dywaSwitchedTo = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	ConcreteUser({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			if (jsog.containsKey("baseUser")) {
				core.Map<core.String,core.dynamic> jsogObj = jsog["baseUser"];
				if(jsogObj != null) {
					BaseUser valueafPY24MwNEeWZVvvwxpYu8A;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueafPY24MwNEeWZVvvwxpYu8A = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.BaseUser") {
								valueafPY24MwNEeWZVvvwxpYu8A = new BaseUser(cache: cache, jsog: jsogObj);
							}
							else {
								valueafPY24MwNEeWZVvvwxpYu8A = new BaseUser(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueafPY24MwNEeWZVvvwxpYu8A = new BaseUser(cache: cache,jsog: jsogObj);
						}
					}
					this._baseUser = valueafPY24MwNEeWZVvvwxpYu8A;
				}
			}
			
			
			_baseUserHasBeenSet = false;
			if (jsog.containsKey("dywaSwitchedTo")) {
				core.Map<core.String,core.dynamic> jsogObj = jsog["dywaSwitchedTo"];
				if(jsogObj != null) {
					ConcreteUser valuea3YV54Wp6Ee2LPP_45_yV9ajYA;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valuea3YV54Wp6Ee2LPP_45_yV9ajYA = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.ConcreteUserImpl") {
								valuea3YV54Wp6Ee2LPP_45_yV9ajYA = new ConcreteUser(cache: cache, jsog: jsogObj);
							}
							else {
								valuea3YV54Wp6Ee2LPP_45_yV9ajYA = new ConcreteUser(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valuea3YV54Wp6Ee2LPP_45_yV9ajYA = new ConcreteUser(cache: cache,jsog: jsogObj);
						}
					}
					this._dywaSwitchedTo = valuea3YV54Wp6Ee2LPP_45_yV9ajYA;
				}
			}
			
			
			_dywaSwitchedToHasBeenSet = false;
		}
	}
	
	void baseUserHasBeenSetted() { _baseUserHasBeenSet=true; }
	void dywaSwitchedToHasBeenSetted() { _dywaSwitchedToHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_baseUserHasBeenSet || 
					_dywaSwitchedToHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( baseUserHasBeenChanged() && !jsonObj.containsKey('baseUser')) && !objects.containsKey(this._baseUser)) {
			if(this._baseUser != null) {
				jsonObj["baseUser"] = this._baseUser.toJSOG(objects);
			}
			else {
				jsonObj["baseUser"] = null;
			}
			}
			if(( dywaSwitchedToHasBeenChanged() && !jsonObj.containsKey('dywaSwitchedTo')) && !objects.containsKey(this._dywaSwitchedTo)) {
			if(this._dywaSwitchedTo != null) {
				if (this._dywaSwitchedTo == this) {
					jsonObj["dywaSwitchedTo"] = { '@ref': jsogId.toString() };
				} else {
					jsonObj["dywaSwitchedTo"] = this._dywaSwitchedTo.toJSOG(objects);
				}
			}
			else {
				jsonObj["dywaSwitchedTo"] = null;
			}
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.ConcreteUserImpl";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( baseUserHasBeenChanged() && !jsonObj.containsKey('baseUser')) && !objects.containsKey(this._baseUser) || this.dywa_id == 0) {
		if(this._baseUser != null) {
			jsonObj["baseUser"] = this._baseUser.toJSOG(objects);
		}
		else {
			jsonObj["baseUser"] = null;
		}
		}
		if(( dywaSwitchedToHasBeenChanged() && !jsonObj.containsKey('dywaSwitchedTo')) && !objects.containsKey(this._dywaSwitchedTo) || this.dywa_id == 0) {
		if(this._dywaSwitchedTo != null) {
			if (this._dywaSwitchedTo == this) {
				jsonObj["dywaSwitchedTo"] = { '@ref': jsogId.toString() };
			} else {
				jsonObj["dywaSwitchedTo"] = this._dywaSwitchedTo.toJSOG(objects);
			}
		}
		else {
			jsonObj["dywaSwitchedTo"] = null;
		}
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static ConcreteUser fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.ConcreteUserImpl') {
			return new ConcreteUser(cache:cache,jsog:jsog);
		}
		return new ConcreteUser(cache:cache,jsog:jsog);
	}
	
	void set baseUser (BaseUser value)
	{
		this._baseUserHasBeenSet = true;
		this._baseUser = value;
	}
	
	BaseUser get baseUser
	{
		return this._baseUser;
	}
	
		BaseUser initOnDemandbaseUser()
		{
			if(this._baseUser == null) {
			this.baseUser = new BaseUser();
			}
			return this.baseUser;
		}
		
		void setValuebaseUser(BaseUser value)
		{
			this.baseUser = value;
		}
		
		void baseUsersetValue(BaseUser value)
		{
			this.baseUser = value;
		}
		
	
	void set dywaSwitchedTo (ConcreteUser value)
	{
		this._dywaSwitchedToHasBeenSet = true;
		this._dywaSwitchedTo = value;
	}
	
	ConcreteUser get dywaSwitchedTo
	{
		return this._dywaSwitchedTo;
	}
	
		ConcreteUser initOnDemanddywaSwitchedTo()
		{
			if(this._dywaSwitchedTo == null) {
			this.dywaSwitchedTo = new ConcreteUser();
			}
			return this.dywaSwitchedTo;
		}
		
		void setValuedywaSwitchedTo(ConcreteUser value)
		{
			this.dywaSwitchedTo = value;
		}
		
		void dywaSwitchedTosetValue(ConcreteUser value)
		{
			this.dywaSwitchedTo = value;
		}
		
	
}

class BaseUser extends BaseModel
{
	core.bool _concreteUserHasBeenSet = false;
	core.bool concreteUserHasBeenChanged() => _concreteUserHasBeenSet;
	DIMEList<ConcreteUser> _concreteUser;
	core.bool _firstNameHasBeenSet = false;
	core.bool firstNameHasBeenChanged() => _firstNameHasBeenSet;
	core.String _firstName;
	core.bool _imageHasBeenSet = false;
	core.bool imageHasBeenChanged() => _imageHasBeenSet;
	FileReference _image;
	core.bool _lastNameHasBeenSet = false;
	core.bool lastNameHasBeenChanged() => _lastNameHasBeenSet;
	core.String _lastName;
	core.bool _passwordHasBeenSet = false;
	core.bool passwordHasBeenChanged() => _passwordHasBeenSet;
	core.String _password;
	core.bool _usernameHasBeenSet = false;
	core.bool usernameHasBeenChanged() => _usernameHasBeenSet;
	core.String _username;
	
	static BaseUser fromId(core.int id) {
		var m = new BaseUser();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'concreteUser': this.concreteUser, 
	  'firstName': this.firstName, 
	  'image': this.image, 
	  'lastName': this.lastName, 
	  'password': this.password, 
	  'username': this.username
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'concreteUser': this.concreteUser = value; return;
	  case 'firstName': this.firstName = value; return;
	  case 'image': this.image = value; return;
	  case 'lastName': this.lastName = value; return;
	  case 'password': this.password = value; return;
	  case 'username': this.username = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	BaseUser({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
			this._concreteUser = new DIMEList.monitored(concreteUserHasBeenSetted);
			this._firstName = null;
			this._image = null;
			this._lastName = null;
			this._password = null;
			this._username = null;
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			this._concreteUser = new DIMEList.monitored(concreteUserHasBeenSetted);
			if (jsog.containsKey("concreteUser")) {
				for (core.Map<core.String,core.dynamic> iter in jsog["concreteUser"]) {
					core.Map<core.String,core.dynamic> jsogObj = iter;
					ConcreteUser valueafOkXgMwNEeWZVvvwxpYu8A;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueafOkXgMwNEeWZVvvwxpYu8A = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.ConcreteUserImpl") {
								valueafOkXgMwNEeWZVvvwxpYu8A = new ConcreteUser(cache: cache, jsog: jsogObj);
							}
							else {
								valueafOkXgMwNEeWZVvvwxpYu8A = new ConcreteUser(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueafOkXgMwNEeWZVvvwxpYu8A = new ConcreteUser(cache: cache,jsog: jsogObj);
						}
					}
					this._concreteUser.add(valueafOkXgMwNEeWZVvvwxpYu8A);
				}
			}
			
			
			_concreteUserHasBeenSet = false;
			if (jsog.containsKey("firstName")) {
				core.String jsogObj = jsog["firstName"];
				if(jsogObj != null) {
					core.String valueaVE6ToM5BEeWKGIrSDzlNog;
					
					if(jsogObj!=null){
					valueaVE6ToM5BEeWKGIrSDzlNog = jsogObj.toString();
					}
					this._firstName = valueaVE6ToM5BEeWKGIrSDzlNog;
				}
				else {
					this._firstName = null;
				}
			}
			
			
			else{
				this._firstName = null;
			}
			_firstNameHasBeenSet = false;
			if (jsog.containsKey("image")) {
				core.Map<core.String,core.dynamic> jsogObj = jsog["image"];
				if(jsogObj != null) {
					FileReference valuea3QnzMM46EeWKGIrSDzlNog;
					
					if(jsogObj!=null){
					valuea3QnzMM46EeWKGIrSDzlNog = new FileReference(jsog: jsogObj);
					}
					this._image = valuea3QnzMM46EeWKGIrSDzlNog;
				}
				else {
					this._image = null;
				}
			}
			
			
			else{
				this._image = null;
			}
			_imageHasBeenSet = false;
			if (jsog.containsKey("lastName")) {
				core.String jsogObj = jsog["lastName"];
				if(jsogObj != null) {
					core.String valueaWYcYEM5BEeWKGIrSDzlNog;
					
					if(jsogObj!=null){
					valueaWYcYEM5BEeWKGIrSDzlNog = jsogObj.toString();
					}
					this._lastName = valueaWYcYEM5BEeWKGIrSDzlNog;
				}
				else {
					this._lastName = null;
				}
			}
			
			
			else{
				this._lastName = null;
			}
			_lastNameHasBeenSet = false;
			if (jsog.containsKey("password")) {
				core.String jsogObj = jsog["password"];
				if(jsogObj != null) {
					core.String valueaYIIgUMwNEeWZVvvwxpYu8A;
					
					if(jsogObj!=null){
					valueaYIIgUMwNEeWZVvvwxpYu8A = jsogObj.toString();
					}
					this._password = valueaYIIgUMwNEeWZVvvwxpYu8A;
				}
				else {
					this._password = null;
				}
			}
			
			
			else{
				this._password = null;
			}
			_passwordHasBeenSet = false;
			if (jsog.containsKey("username")) {
				core.String jsogObj = jsog["username"];
				if(jsogObj != null) {
					core.String valuea1aiCkG_QEeaqHezD6_45_M0AA;
					
					if(jsogObj!=null){
					valuea1aiCkG_QEeaqHezD6_45_M0AA = jsogObj.toString();
					}
					this._username = valuea1aiCkG_QEeaqHezD6_45_M0AA;
				}
				else {
					this._username = null;
				}
			}
			
			
			else{
				this._username = null;
			}
			_usernameHasBeenSet = false;
		}
	}
	
	void concreteUserHasBeenSetted() { _concreteUserHasBeenSet=true; }
	void firstNameHasBeenSetted() { _firstNameHasBeenSet=true; }
	void imageHasBeenSetted() { _imageHasBeenSet=true; }
	void lastNameHasBeenSetted() { _lastNameHasBeenSet=true; }
	void passwordHasBeenSetted() { _passwordHasBeenSet=true; }
	void usernameHasBeenSetted() { _usernameHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_concreteUserHasBeenSet || 
					_firstNameHasBeenSet || 
					_imageHasBeenSet || 
					_lastNameHasBeenSet || 
					_passwordHasBeenSet || 
					_usernameHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( concreteUserHasBeenChanged() && !jsonObj.containsKey('concreteUser'))) {
			if(this._concreteUser.isEmpty){
				jsonObj["concreteUser"] = [];
			}
			else{
				jsonObj["concreteUser"] = this._concreteUser.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
			}
			}
			if(( passwordHasBeenChanged() && !jsonObj.containsKey('password')) && !objects.containsKey(this._password)) {
			jsonObj["password"] = this._password;
			}
			if(( imageHasBeenChanged() && !jsonObj.containsKey('image')) && !objects.containsKey(this._image)) {
			if(this._image != null) {
				jsonObj["image"] = this._image.toJSOG(objects);
			}
			else {
				jsonObj["image"] = null;
			}
			}
			if(( firstNameHasBeenChanged() && !jsonObj.containsKey('firstName')) && !objects.containsKey(this._firstName)) {
			jsonObj["firstName"] = this._firstName;
			}
			if(( lastNameHasBeenChanged() && !jsonObj.containsKey('lastName')) && !objects.containsKey(this._lastName)) {
			jsonObj["lastName"] = this._lastName;
			}
			if(( usernameHasBeenChanged() && !jsonObj.containsKey('username')) && !objects.containsKey(this._username)) {
			jsonObj["username"] = this._username;
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.BaseUser";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( concreteUserHasBeenChanged() && !jsonObj.containsKey('concreteUser')) || this.dywa_id == 0) {
		if(this._concreteUser.isEmpty){
			jsonObj["concreteUser"] = [];
		}
		else{
			jsonObj["concreteUser"] = this._concreteUser.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
		}
		}
		if(( passwordHasBeenChanged() && !jsonObj.containsKey('password')) && !objects.containsKey(this._password) || this.dywa_id == 0) {
		jsonObj["password"] = this._password;
		}
		if(( imageHasBeenChanged() && !jsonObj.containsKey('image')) && !objects.containsKey(this._image) || this.dywa_id == 0) {
		if(this._image != null) {
			jsonObj["image"] = this._image.toJSOG(objects);
		}
		else {
			jsonObj["image"] = null;
		}
		}
		if(( firstNameHasBeenChanged() && !jsonObj.containsKey('firstName')) && !objects.containsKey(this._firstName) || this.dywa_id == 0) {
		jsonObj["firstName"] = this._firstName;
		}
		if(( lastNameHasBeenChanged() && !jsonObj.containsKey('lastName')) && !objects.containsKey(this._lastName) || this.dywa_id == 0) {
		jsonObj["lastName"] = this._lastName;
		}
		if(( usernameHasBeenChanged() && !jsonObj.containsKey('username')) && !objects.containsKey(this._username) || this.dywa_id == 0) {
		jsonObj["username"] = this._username;
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static BaseUser fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.BaseUser') {
			return new BaseUser(cache:cache,jsog:jsog);
		}
		return new BaseUser(cache:cache,jsog:jsog);
	}
	
	void set concreteUser (DIMEList<ConcreteUser> value)
	{
		this._concreteUserHasBeenSet = true;
		this._concreteUser = value;
	}
	
	DIMEList<ConcreteUser> get concreteUser
	{
		return this._concreteUser;
	}
	
		DIMEList<ConcreteUser> initOnDemandconcreteUser()
		{
			if(this._concreteUser == null) {
			this._concreteUser = new DIMEList();
			}
			return this.concreteUser;
		}
		
		void setValueconcreteUser(DIMEList<ConcreteUser> value)
		{
			this.concreteUser = value;
		}
		
		void concreteUsersetValue(DIMEList<ConcreteUser> value)
		{
			this.concreteUser = value;
		}
		
		void concreteUseradd(ConcreteUser value)
		{
			this.concreteUser.add(value);
			this._concreteUserHasBeenSet = true;
		}

	
	void set password (core.String value)
	{
		this._passwordHasBeenSet = true;
		this._password = value;
	}
	
	core.String get password
	{
		return this._password;
	}
	
		core.String initOnDemandpassword()
		{
			return this.password;
		}
		
		void setValuepassword(core.String value)
		{
			this.password = value;
		}
		
		void passwordsetValue(core.String value)
		{
			this.password = value;
		}
		
	
	void set image (FileReference value)
	{
		this._imageHasBeenSet = true;
		this._image = value;
	}
	
	FileReference get image
	{
		return this._image;
	}
	
		FileReference initOnDemandimage()
		{
			return this.image;
		}
		
		void setValueimage(FileReference value)
		{
			this.image = value;
		}
		
		void imagesetValue(FileReference value)
		{
			this.image = value;
		}
		
	
	void set firstName (core.String value)
	{
		this._firstNameHasBeenSet = true;
		this._firstName = value;
	}
	
	core.String get firstName
	{
		return this._firstName;
	}
	
		core.String initOnDemandfirstName()
		{
			return this.firstName;
		}
		
		void setValuefirstName(core.String value)
		{
			this.firstName = value;
		}
		
		void firstNamesetValue(core.String value)
		{
			this.firstName = value;
		}
		
	
	void set lastName (core.String value)
	{
		this._lastNameHasBeenSet = true;
		this._lastName = value;
	}
	
	core.String get lastName
	{
		return this._lastName;
	}
	
		core.String initOnDemandlastName()
		{
			return this.lastName;
		}
		
		void setValuelastName(core.String value)
		{
			this.lastName = value;
		}
		
		void lastNamesetValue(core.String value)
		{
			this.lastName = value;
		}
		
	
	void set username (core.String value)
	{
		this._usernameHasBeenSet = true;
		this._username = value;
	}
	
	core.String get username
	{
		return this._username;
	}
	
		core.String initOnDemandusername()
		{
			return this.username;
		}
		
		void setValueusername(core.String value)
		{
			this.username = value;
		}
		
		void usernamesetValue(core.String value)
		{
			this.username = value;
		}
		
	
}

class Board extends BaseModel
{
	core.bool _columnsHasBeenSet = false;
	core.bool columnsHasBeenChanged() => _columnsHasBeenSet;
	DIMEList<Column> _columns;
	
	static Board fromId(core.int id) {
		var m = new Board();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'columns': this.columns
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'columns': this.columns = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	Board({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
			this._columns = new DIMEList.monitored(columnsHasBeenSetted);
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			this._columns = new DIMEList.monitored(columnsHasBeenSetted);
			if (jsog.containsKey("columns")) {
				for (core.Map<core.String,core.dynamic> iter in jsog["columns"]) {
					core.Map<core.String,core.dynamic> jsogObj = iter;
					Column valueag81d0WkUEe2cW5_gHw6itA;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueag81d0WkUEe2cW5_gHw6itA = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.ColumnImpl") {
								valueag81d0WkUEe2cW5_gHw6itA = new Column(cache: cache, jsog: jsogObj);
							}
							else {
								valueag81d0WkUEe2cW5_gHw6itA = new Column(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueag81d0WkUEe2cW5_gHw6itA = new Column(cache: cache,jsog: jsogObj);
						}
					}
					this._columns.add(valueag81d0WkUEe2cW5_gHw6itA);
				}
			}
			
			
			_columnsHasBeenSet = false;
		}
	}
	
	void columnsHasBeenSetted() { _columnsHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_columnsHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( columnsHasBeenChanged() && !jsonObj.containsKey('columns'))) {
			if(this._columns.isEmpty){
				jsonObj["columns"] = [];
			}
			else{
				jsonObj["columns"] = this._columns.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
			}
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.BoardImpl";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( columnsHasBeenChanged() && !jsonObj.containsKey('columns')) || this.dywa_id == 0) {
		if(this._columns.isEmpty){
			jsonObj["columns"] = [];
		}
		else{
			jsonObj["columns"] = this._columns.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
		}
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static Board fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.BoardImpl') {
			return new Board(cache:cache,jsog:jsog);
		}
		return new Board(cache:cache,jsog:jsog);
	}
	
	void set columns (DIMEList<Column> value)
	{
		this._columnsHasBeenSet = true;
		this._columns = value;
	}
	
	DIMEList<Column> get columns
	{
		return this._columns;
	}
	
		DIMEList<Column> initOnDemandcolumns()
		{
			if(this._columns == null) {
			this._columns = new DIMEList();
			}
			return this.columns;
		}
		
		void setValuecolumns(DIMEList<Column> value)
		{
			this.columns = value;
		}
		
		void columnssetValue(DIMEList<Column> value)
		{
			this.columns = value;
		}
		
		void columnsadd(Column value)
		{
			this.columns.add(value);
			this._columnsHasBeenSet = true;
		}

	
}

class Column extends BaseModel
{
	core.bool _cellsHasBeenSet = false;
	core.bool cellsHasBeenChanged() => _cellsHasBeenSet;
	DIMEList<Cell> _cells;
	core.bool _indexHasBeenSet = false;
	core.bool indexHasBeenChanged() => _indexHasBeenSet;
	core.int _index;
	
	static Column fromId(core.int id) {
		var m = new Column();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'cells': this.cells, 
	  'index': this.index
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'cells': this.cells = value; return;
	  case 'index': this.index = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	Column({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
			this._cells = new DIMEList.monitored(cellsHasBeenSetted);
			this._index = 0;
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			this._cells = new DIMEList.monitored(cellsHasBeenSetted);
			if (jsog.containsKey("cells")) {
				for (core.Map<core.String,core.dynamic> iter in jsog["cells"]) {
					core.Map<core.String,core.dynamic> jsogObj = iter;
					Cell valueaPRuuwWmoEe2sl80VZxYqHw;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueaPRuuwWmoEe2sl80VZxYqHw = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.CellImpl") {
								valueaPRuuwWmoEe2sl80VZxYqHw = new Cell(cache: cache, jsog: jsogObj);
							}
							else {
								valueaPRuuwWmoEe2sl80VZxYqHw = new Cell(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueaPRuuwWmoEe2sl80VZxYqHw = new Cell(cache: cache,jsog: jsogObj);
						}
					}
					this._cells.add(valueaPRuuwWmoEe2sl80VZxYqHw);
				}
			}
			
			
			_cellsHasBeenSet = false;
			if (jsog.containsKey("index")) {
				core.int jsogObj = jsog["index"];
				if(jsogObj != null) {
					core.int valueaWv9wAGmqEe2sl80VZxYqHw;
					
					if(jsogObj!=null){
					valueaWv9wAGmqEe2sl80VZxYqHw = core.int.parse(jsogObj.toString());
					}
					this._index = valueaWv9wAGmqEe2sl80VZxYqHw;
				}
				else {
					this._index = 0;
				}
			}
			
			
			else{
				this._index = 0;
			}
			_indexHasBeenSet = false;
		}
	}
	
	void cellsHasBeenSetted() { _cellsHasBeenSet=true; }
	void indexHasBeenSetted() { _indexHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_cellsHasBeenSet || 
					_indexHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( cellsHasBeenChanged() && !jsonObj.containsKey('cells'))) {
			if(this._cells.isEmpty){
				jsonObj["cells"] = [];
			}
			else{
				jsonObj["cells"] = this._cells.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
			}
			}
			if(( indexHasBeenChanged() && !jsonObj.containsKey('index')) && !objects.containsKey(this._index)) {
			jsonObj["index"] = this._index;
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.ColumnImpl";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( cellsHasBeenChanged() && !jsonObj.containsKey('cells')) || this.dywa_id == 0) {
		if(this._cells.isEmpty){
			jsonObj["cells"] = [];
		}
		else{
			jsonObj["cells"] = this._cells.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
		}
		}
		if(( indexHasBeenChanged() && !jsonObj.containsKey('index')) && !objects.containsKey(this._index) || this.dywa_id == 0) {
		jsonObj["index"] = this._index;
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static Column fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.ColumnImpl') {
			return new Column(cache:cache,jsog:jsog);
		}
		return new Column(cache:cache,jsog:jsog);
	}
	
	void set cells (DIMEList<Cell> value)
	{
		this._cellsHasBeenSet = true;
		this._cells = value;
	}
	
	DIMEList<Cell> get cells
	{
		return this._cells;
	}
	
		DIMEList<Cell> initOnDemandcells()
		{
			if(this._cells == null) {
			this._cells = new DIMEList();
			}
			return this.cells;
		}
		
		void setValuecells(DIMEList<Cell> value)
		{
			this.cells = value;
		}
		
		void cellssetValue(DIMEList<Cell> value)
		{
			this.cells = value;
		}
		
		void cellsadd(Cell value)
		{
			this.cells.add(value);
			this._cellsHasBeenSet = true;
		}

	
	void set index (core.int value)
	{
		this._indexHasBeenSet = true;
		this._index = value;
	}
	
	core.int get index
	{
		return this._index;
	}
	
		core.int initOnDemandindex()
		{
			return this.index;
		}
		
		void setValueindex(core.int value)
		{
			this.index = value;
		}
		
		void indexsetValue(core.int value)
		{
			this.index = value;
		}
		
	
}

class Cell extends BaseModel
{
	core.bool _valueHasBeenSet = false;
	core.bool valueHasBeenChanged() => _valueHasBeenSet;
	core.int _value;
	
	static Cell fromId(core.int id) {
		var m = new Cell();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'value': this.value
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'value': this.value = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	Cell({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
			this._value = 0;
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			if (jsog.containsKey("value")) {
				core.int jsogObj = jsog["value"];
				if(jsogObj != null) {
					core.int valueaQoaN0WmoEe2sl80VZxYqHw;
					
					if(jsogObj!=null){
					valueaQoaN0WmoEe2sl80VZxYqHw = core.int.parse(jsogObj.toString());
					}
					this._value = valueaQoaN0WmoEe2sl80VZxYqHw;
				}
				else {
					this._value = 0;
				}
			}
			
			
			else{
				this._value = 0;
			}
			_valueHasBeenSet = false;
		}
	}
	
	void valueHasBeenSetted() { _valueHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_valueHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( valueHasBeenChanged() && !jsonObj.containsKey('value')) && !objects.containsKey(this._value)) {
			jsonObj["value"] = this._value;
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.CellImpl";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( valueHasBeenChanged() && !jsonObj.containsKey('value')) && !objects.containsKey(this._value) || this.dywa_id == 0) {
		jsonObj["value"] = this._value;
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static Cell fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.CellImpl') {
			return new Cell(cache:cache,jsog:jsog);
		}
		return new Cell(cache:cache,jsog:jsog);
	}
	
	void set value (core.int value)
	{
		this._valueHasBeenSet = true;
		this._value = value;
	}
	
	core.int get value
	{
		return this._value;
	}
	
		core.int initOnDemandvalue()
		{
			return this.value;
		}
		
		void setValuevalue(core.int value)
		{
			this.value = value;
		}
		
		void valuesetValue(core.int value)
		{
			this.value = value;
		}
		
	
}

class TempColumn extends BaseModel
{
	core.bool _cellHasBeenSet = false;
	core.bool cellHasBeenChanged() => _cellHasBeenSet;
	DIMEList<Cell> _cell;
	
	static TempColumn fromId(core.int id) {
		var m = new TempColumn();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'cell': this.cell
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'cell': this.cell = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	TempColumn({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
			this._cell = new DIMEList.monitored(cellHasBeenSetted);
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			this._cell = new DIMEList.monitored(cellHasBeenSetted);
			if (jsog.containsKey("cell")) {
				for (core.Map<core.String,core.dynamic> iter in jsog["cell"]) {
					core.Map<core.String,core.dynamic> jsogObj = iter;
					Cell valueahJyLQWnxEe2us_45_FTnwz4hA;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueahJyLQWnxEe2us_45_FTnwz4hA = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.CellImpl") {
								valueahJyLQWnxEe2us_45_FTnwz4hA = new Cell(cache: cache, jsog: jsogObj);
							}
							else {
								valueahJyLQWnxEe2us_45_FTnwz4hA = new Cell(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueahJyLQWnxEe2us_45_FTnwz4hA = new Cell(cache: cache,jsog: jsogObj);
						}
					}
					this._cell.add(valueahJyLQWnxEe2us_45_FTnwz4hA);
				}
			}
			
			
			_cellHasBeenSet = false;
		}
	}
	
	void cellHasBeenSetted() { _cellHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_cellHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( cellHasBeenChanged() && !jsonObj.containsKey('cell'))) {
			if(this._cell.isEmpty){
				jsonObj["cell"] = [];
			}
			else{
				jsonObj["cell"] = this._cell.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
			}
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.TempColumnImpl";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( cellHasBeenChanged() && !jsonObj.containsKey('cell')) || this.dywa_id == 0) {
		if(this._cell.isEmpty){
			jsonObj["cell"] = [];
		}
		else{
			jsonObj["cell"] = this._cell.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
		}
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static TempColumn fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.TempColumnImpl') {
			return new TempColumn(cache:cache,jsog:jsog);
		}
		return new TempColumn(cache:cache,jsog:jsog);
	}
	
	void set cell (DIMEList<Cell> value)
	{
		this._cellHasBeenSet = true;
		this._cell = value;
	}
	
	DIMEList<Cell> get cell
	{
		return this._cell;
	}
	
		DIMEList<Cell> initOnDemandcell()
		{
			if(this._cell == null) {
			this._cell = new DIMEList();
			}
			return this.cell;
		}
		
		void setValuecell(DIMEList<Cell> value)
		{
			this.cell = value;
		}
		
		void cellsetValue(DIMEList<Cell> value)
		{
			this.cell = value;
		}
		
		void celladd(Cell value)
		{
			this.cell.add(value);
			this._cellHasBeenSet = true;
		}

	
}
