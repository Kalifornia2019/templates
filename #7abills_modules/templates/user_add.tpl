<form action=$SELF_URL METHOD=post name=FORM_NAS ID='FORM_NAS' class='form-horizontal' role='form'>

< input type = hidden name = 'index' value = '$index' > %ID %

<div class='box box-theme box-big-form'> < div class = 'box-header with-border' > <h4 class='box-title'> % TITLE %< / h4 > </div> < div class = 'box-body' >

<div class="card flex-row flex-wrap p-0"> < div class = "card-header border-0" > <i class="fa fa-user-circle-o fa-4x" aria-hidden="true"> < /i>
    </div > <div class='form-group'> < label for = 'NAS_IP' class = 'control-label col-md-4 required' > NAME : </label>

< div class = 'col-sm-8' > <input type=text class='form-control ip-input' required id='NAS_IP' name='NAME' value='%NAME%'> < /div>
        </div > <div class='form-group'> < label for = 'NAS_NAME' class = 'control-label col-md-4 required' > ADDRESS : </label>

< div class = 'col-md-8' > <input type='text' class='form-control' id='ADDRESS' name='ADDRESS' value='%ADDRESS%' required > < /div>
        </div >

<div class='form-group'> < label for = 'NAS_NAME' class = 'control-label col-md-4 required' > EMAIL : </label>

< div class = 'col-md-8' > <input type='text' class='form-control' id='EMAIL' name='EMAIL' value='%EMAIL%' required > < /div>
        </div >

<div class='box-footer'> % SUBMIT % </div> < /div>

    </div >

</form>