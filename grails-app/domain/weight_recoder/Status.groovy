package weight_recoder

class Status {
  double weight
  double bodyFatPercentage
  Date dateCreated
  Date lastUpdated
  User user
  Date checkDate

  static constraints = {
  }

  static mapping = {
    autoTimestamp true
  }
}
