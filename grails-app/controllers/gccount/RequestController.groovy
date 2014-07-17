package gccount



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RequestController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Request.list(params), model:[requestInstanceCount: Request.count()]
    }

    def show(Request requestInstance) {
        respond requestInstance
    }

    def create() {
        respond new Request(params)
    }

    @Transactional
    def save(Request requestInstance) {
        if (requestInstance == null) {
            notFound()
            return
        }

        if (requestInstance.hasErrors()) {
            respond requestInstance.errors, view:'create'
            return
        }

        requestInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'request.label', default: 'Request'), requestInstance.id])
                redirect requestInstance
            }
            '*' { respond requestInstance, [status: CREATED] }
        }
    }

    def edit(Request requestInstance) {
        respond requestInstance
    }

    @Transactional
    def update(Request requestInstance) {
        if (requestInstance == null) {
            notFound()
            return
        }

        if (requestInstance.hasErrors()) {
            respond requestInstance.errors, view:'edit'
            return
        }

        requestInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Request.label', default: 'Request'), requestInstance.id])
                redirect requestInstance
            }
            '*'{ respond requestInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Request requestInstance) {

        if (requestInstance == null) {
            notFound()
            return
        }

        requestInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Request.label', default: 'Request'), requestInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'request.label', default: 'Request'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
