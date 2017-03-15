package weight_recoder

class HomeController {

    def index() {
        render(view : "/home/index", model: [users : User.listOrderById()])
    }

    def save() {
      String date = params.checkDate
      String weight = params.weight
      String bodyFatPercentage = params.bodyFatPercentage
      String userId = params.user
      new Status(
        checkDate : new Date(date),
        weight : weight,
        bodyFatPercentage : bodyFatPercentage,
        user : User.get(userId),
        ).save()

      render(view : "/home/index", model: [users : User.listOrderById()])
    }
}
