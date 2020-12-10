<!-- BEGIN: main -->
<form action="{ACTION}" method="POST" class="confirm-reload">
  <input name="save" type="hidden" value="1" />
  <input type="hidden" value="{ISCOPY}" name="copy" />
  <div class="row">
      <div class="col-sm-24 col-md-18">
          <div class="table-responsive">
              <table class="table table-striped table-bordered table-hover">
                  <colgroup>
                      <col class="w200" />
                      <col />
                  </colgroup>
                  <tbody>
                      <tr>
                          <td class="text-right"> {LANG.tenCauhoi} <sup class="required">(*)</sup></td>
                          <td>
                            <input class="w300 form-control pull-left" type="text" value="" name="tencauhoi" id="idtencasi" maxlength="250" />&nbsp;
                          </td>
                      </tr>      
                      <tr>
                        <td class="text-right"> {LANG.tenTraloi} <sup class="required">(*)</sup></td>
                        <td>
                          <input class="w300 form-control pull-left" type="text" value="" name="tentraloi" id="idtencasi" maxlength="250" />&nbsp;
                        </td>
                    </tr>             
                  </tbody>
              </table>
          </div>
      </div>
  </div>
  <div class="row text-center"><input type="submit" name="dongy" value="{LANG.save}" class="btn btn-primary"/>
  </div>
</form>
<!-- END: main -->