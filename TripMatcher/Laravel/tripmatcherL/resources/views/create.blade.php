@extends('layout')



test


<form method="post" action="{{ route('index.create') }}">
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
              <input type="text" class="form-control" name="Summary"/>
          </div>
          <div class="form-group">
              <label for="Country_id">Country Id</label>
              <input type="text" class="form-control" name="Country_id"/>
          </div>
          <div class="form-group">
              <label for="Added_date">Added Date</label>
              <input type="text" class="form-control" name="Added_date"/>
          </div>
          <button type="submit" class="btn btn-block btn-danger">Create Trip</button>
      </form>

