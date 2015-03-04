package com.repo

class SchoolController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def index() {
		redirect(action: "list", params: params)
	}

	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		[schoolInstanceList: School.list(params), schoolInstanceTotal: School.count()]
	}

	def create() {
		[schoolInstance: new School(params)]
	}

	def save() {
		def schoolInstance = new School(params)
		if (!schoolInstance.save(flush: true)) {
			render(view: "create", model: [schoolInstance: schoolInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'school.label', default: 'School'), schoolInstance.id])
		redirect(action: "show", id: schoolInstance.id)
	}

	def show(Long id) {
		def schoolInstance = School.get(id)
		if (!schoolInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'school.label', default: 'School'), id])
			redirect(action: "list")
			return
		}

		[schoolInstance: schoolInstance]
	}

	def delete(Long id) {
		def schoolInstance = School.get(id)
		if (!schoolInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'school.label', default: 'School'), id])
			redirect(action: "list")
			return
		}

		try {
			schoolInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'school.label', default: 'School'), id])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'school.label', default: 'School'), id])
			redirect(action: "show", id: id)
		}
	}
 
}
