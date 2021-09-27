@extends('layout')

Welcome to Tripmatcher 
<br> 
<br> 


<div #target class="activiteit">
   @foreach($apiModel as $trip)
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
    <a href="{{ route('index.edit', $apiModel[2]->id)}}" class="btn btn-info btn-sm">Edit</a>
      <form action="{{ route('index.delete', $apiModel[2]->id)}}" method="post" style="display: inline-block">
      @csrf
      @method('DELETE')
      <button class="btn btn-info btn-sm" type="submit">Delete</button>
      </form>
      @endforeach
  </div>
</div>

