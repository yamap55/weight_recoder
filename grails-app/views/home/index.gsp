<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8">
    <title>Weight Recoder</title>
    <link rel="stylesheet" href="//unpkg.com/flatpickr/dist/flatpickr.min.css">
    <asset:stylesheet href="bootstrap.css" />
    <asset:javascript src="jquery-2.2.0.min.js" />
    <asset:javascript src="application.js" />
    <asset:javascript src="bootstrap.js" />
    <script src="//unpkg.com/flatpickr"></script>
  </head>
  <body>
    <div class="container">
      <h1>Weight Recoder</h1>
      <g:form controller="home" action="save" class="form-horizontal">
        <div class="form-group">
          <label for="name" class="col-sm-2 control-label">名前</label>
          <div class="col-sm-10">
            <g:radioGroup name="user" values="${users.collect{it.id}}" labels="${users.collect{it.name}}" required="true">
              <label class="radio-inline">
                ${it.radio} ${it.label}
              </label>
            </g:radioGroup>
          </div>
        </div>
        <div class="form-group">
          <label for="checkDate" class="col-sm-2 control-label">日付</label>
          <div class="col-sm-10">
            <g:textField name="checkDate" class="flatpickr form-control" value="${(new Date().format("HH") < "04" ? (new Date() -1) : new Date()).format("yyyy/MM/dd")}" />
          </div>
        </div>
        <div class="form-group">
          <label for="weight" class="col-sm-2 control-label">体重</label>
          <div class="col-sm-10">
            <g:field type="number" name="weight" class="form-control" step="0.1" required="true"/>
          </div>
        </div>
        <div class="form-group">
          <label for="bodyFatPercentage" class="col-sm-2 control-label">体脂肪率</label>
          <div class="col-sm-10">
            <g:field type="number" name="bodyFatPercentage" class="form-control" step="0.1"/>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <g:submitButton class="btn btn-default" name="save">保存</g:submitButton>
          </div>
        </div>
      </g:form>
    </div>
    <script type="text/javascript">
      flatpickr(".flatpickr");
    </script>
  </body>
</html>
