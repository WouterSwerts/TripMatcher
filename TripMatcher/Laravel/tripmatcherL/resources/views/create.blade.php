@extends('layout')

@section('content')

<style>
    .container {
      max-width: 450px;
    }
    .push-top {
      margin-top: 50px;
    }
</style>

<div class="card push-top">
  <div class="card-header">
    Create a new Trip:
  </div>

  <div class="card-body">
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      <form method="post" action="{{ route('index.store') }}">
          <div class="form-group">
              @csrf
              <label for="Image">Image</label>
              <input type="text" class="form-control" name="Image"/>
          </div>
          <div class="form-group">
              <label for="Title">Title</label>
              <input type="text" class="form-control" name="Title"/>
          </div>
          <div class="form-group">
              <label for="Summary">Summary</label>
              <input type="tekst" class="form-control" name="Summary"/>
          </div>
          <div class="form-group">
              <label for="Country_id">Country Id</label>
              <input type="text" class="form-control" name="Country_id"/>
          </div>
          <div class="form-group">
              <label for="Added_date">Date of Creation </label>
              <input type="date" class="form-control" name="Added_date"/>
          </div>
          <button type="submit" class="btn btn-block btn-danger">Create Trip</button>
      </form>
  </div>
</div>
@endsection