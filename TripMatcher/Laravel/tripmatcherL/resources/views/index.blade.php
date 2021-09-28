@extends('layout')

Welcome to Tripmatcher 
<br> 
<br> 


<div #target class="activiteit">
   @foreach($admin as $trip)
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
    <a href="{{ route('index.edit', $trip->Trip_id)}}" class="btn btn-info btn-sm">Edit</a>
    <form action="{{ route('index.destroy', $trip->Trip_id)}}" method="post" style="display: inline-block">
      @csrf
      @method('DELETE')
      <button class="btn btn-info btn-sm" type="submit">Delete</button>
      </form>
      @endforeach
  </div>
</div>

