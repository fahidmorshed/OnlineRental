<!-- /.modal compose message -->
    <div class="modal show" id="modalCompose">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title">Compose Message</h4>
          </div>
          <div class="modal-body">
            <form role="form" class="form-horizontal">
                <div class="form-group">
                  <label class="col-sm-2" for="inputTo">To</label>
                  <div class="col-sm-10"><input type="email" class="form-control" id="inputTo" placeholder="comma separated list of recipients"></div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2" for="inputSubject">Subject</label>
                  <div class="col-sm-10"><input type="text" class="form-control" id="inputSubject" placeholder="subject"></div>
                </div>
                <div class="form-group">
                  <label class="col-sm-12" for="inputBody">Message</label>
                  <div class="col-sm-12"><textarea class="form-control" id="inputBody" rows="18"></textarea></div>
                </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</button> 
            <button type="button" class="btn btn-warning pull-left">Save Draft</button>
            <button type="button" class="btn btn-primary ">Send <i class="fa fa-arrow-circle-right fa-lg"></i></button>
            
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal compose message -->

