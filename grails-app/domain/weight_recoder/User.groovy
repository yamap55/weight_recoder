package weight_recoder

class User {
  String name
  Date dateCreated
  Date lastUpdated

  static constraints = {
  }

  static mapping = {
    autoTimestamp true
  }
}
