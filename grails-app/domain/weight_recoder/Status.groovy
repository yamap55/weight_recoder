package weight_recoder

class Status {
  double weight
  double bodyFatPercentage
  Date dateCreated
  Date lastUpdated

  static constraints = {
  }

  static mapping = {
    autoTimestamp true
  }
}
