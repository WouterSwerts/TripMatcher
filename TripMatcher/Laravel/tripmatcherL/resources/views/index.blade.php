@extends('layout')

@section('content')


<div class="balk">
  <p>ALL TRIPS</p>
</div>


<div class="trips">

  

@foreach($admin as $trip)

<div #target class="activiteit">
  <div class="tripImage">
    <div class="afbeelding">
    <img src="{{$trip->Image}}" alt="img">
    </div> 
  </div>
  <div class="tripContent">
    
    <div class="titel">
      <h3>{{$trip->Title}}</h3>
    </div>
    <div class="tekst">
      <p>{{$trip->Summary}}</p>
    </div>
    <div class="tagline">

    </div>
    
  </div>
  <div class="actions">
    <a href="{{ route('index.edit', $trip->Trip_id)}}" class="buttons">Edit Trip  <i class="far fa-edit"></i></a>
    <form action="{{ route('index.destroy', $trip->Trip_id)}}" method="post" style="display: inline-block">
      @csrf
      @method('DELETE')
      <button class="buttons" type="submit">Delete Trip  <i class="far fa-trash-alt"></i></button>
      </form>
  </div>
    
    </div>
      @endforeach


@endsection

</div>

