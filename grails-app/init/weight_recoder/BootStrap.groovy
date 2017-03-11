package weight_recoder
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
      environments {
        development {
          ["user1","user2","user3"].each {
            new User(name:it).save()
          }
        }
      }
    }
    def destroy = {
    }
}
