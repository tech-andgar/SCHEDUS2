<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>

  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.0/fullcalendar.min.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.0/fullcalendar.print.css"/>
  
  <!-- Scripts -->
  <script src="http://code.jquery.com/jquery.js"></script>
  <!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.0/fullcalendar.min.js"></script>
   
</head>
<body>
<div class="container">

<div class="panel panel-primary">

 <div class="panel-heading">Event Calendar in Laravel 5 Using Laravel-fullcalendar</div>

  <div class="panel-body">    

       {!! Form::open(array('route' => 'events.add','method'=>'POST','files'=>'true')) !!}
        <div class="row">
           <div class="col-xs-12 col-sm-12 col-md-12">
              @if (Session::has('success'))
                 <div class="alert alert-success">{{ Session::get('success') }}</div>
              @elseif (Session::has('warnning'))
                  <div class="alert alert-danger">{{ Session::get('warnning') }}</div>
              @endif

          </div>

          <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                {!! Form::label('event_name','Event Name:') !!}
                <div class="">
                {!! Form::text('event_name', null, ['class' => 'form-control']) !!}
                {!! $errors->first('event_name', '<p class="alert alert-danger">:message</p>') !!}
                </div>
            </div>
          </div>

          <div class="col-xs-3 col-sm-3 col-md-3">
            <div class="form-group">
              {!! Form::label('start_date','Start Date:') !!}
              <div class="">
              {!! Form::date('start_date', null, ['class' => 'form-control']) !!}
              {!! $errors->first('start_date', '<p class="alert alert-danger">:message</p>') !!}
              </div>
            </div>
          </div>

          <div class="col-xs-3 col-sm-3 col-md-3">
            <div class="form-group">
              {!! Form::label('end_date','End Date:') !!}
              <div class="">
              {!! Form::date('end_date', null, ['class' => 'form-control']) !!}
              {!! $errors->first('end_date', '<p class="alert alert-danger">:message</p>') !!}
              </div>
            </div>
          </div>

          <div class="col-xs-1 col-sm-1 col-md-1 text-center"> &nbsp;<br/>
          {!! Form::submit('Add Event',['class'=>'btn btn-primary']) !!}
          </div>
        </div>
       {!! Form::close() !!}

 </div>

</div>

<div class="panel panel-primary">
  <div class="panel-heading">MY Event Details</div>
  <div class="panel-body" >
      {!! $calendar_details->calendar() !!}
      {!! $calendar_details->script() !!}
  </div>
</div>

</div>
</body>
</html>