package com.repo

class School {
	String name
	String code
	String address
	String emailDomain
	
    static constraints = {
		name nullable:false, blank:false
		code nullable:false, blank:false
		address nullable:false, blank:false
		emailDomain email:true, blank:false, unique: true, maxSize:175
    }
}
