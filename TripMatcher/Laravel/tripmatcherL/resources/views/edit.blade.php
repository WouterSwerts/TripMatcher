@extends('layout')

@section('content')

<div class="containerEdit">


<div #target class="activiteit">
  <div class="tripImage">
    <div class="afbeelding">
    <img src="{{$admin[0]->Image}}" alt="img">
    </div> 
  </div>
  <div class="tripContent">
    
    <div class="titel">
      <h3>{{$admin[0]->Title}}</h3>
    </div>
    <div class="tekst">
      <p>{{$admin[0]->Summary}}</p>
    </div>
    <div class="tagline">

    </div>
    
  </div>
</div>


<div class="">

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
    

    
      <form method="post" action="{{route('index.update', $admin[0]->Trip_id)}}">
        @csrf
        @method('PATCH')
        <div class="formEdit">
        <div class="leftPartForm">
          <div class="inputForm">
              <label for="Title" class="labelForm">Title</label>
              <input type="text" class="inputField" name="Title" Value="{{$admin[0]->Title}}"/>
          </div>
          <div class="inputForm">
              <label for="Summary" class="labelForm">Summary</label>
              <textarea type="text" class="inputField" name="Summary" rows="7">{{$admin[0]->Summary}}
              </textarea>
          </div>
          <div class="inputForm">
              <label for="Country_id" class="labelForm">Country</label>
              <select type="text" class="inputField" name="Country_id" Value="{{$admin[0]->Country_id}}">
                  <option value="0">Choose Country</option>
                  <option value="1">Belgium</option>
                  <option value="2">Netherlands</option>
                  <option value="3">France</option>
                  <option value="4">Italy</option>
                  <option value="5">Germany</option>
              </select>
          </div>
          <div class="inputForm">
              <label for="Added_date" class="labelForm">Date of Creation </label>
              <input type="date" class="inputField" name="Added_date" Value="{{$admin[0]->Added_date}}"/>
          </div>
          <div class="inputForm">
           
            <label for="Image" class="labelForm">Image</label>
            <input type="file" class="inputField" name="Image" src="{{ asset('assets/img/upload.png') }}"/>
        </div>
          <button type="submit" class="inputField inputButton">Save Changes</button>
        </div>
        <div class="rightPartForm">
          <div class="tagsForm">
            <label for="Image" class="labelForm ">Categories</label>
            <div class="tagsEdit">
              <p class="tag">Nature</p>
              <p class="tag">City</p>
              <p class="tag">Town</p>
              <p class="tag">Mountain</p>
              <p class="tag">Lake</p>
              <p class="tag">Beach</p>
              <p class="tag">River</p>
              <p class="tag">Sea</p>
              <p class="tag">Forest</p>
              <p class="tag">Vineyard</p>
              <p class="tag">Gorge</p>
              <p class="tag">Cave</p>
              <p class="tag">Viewport</p>
              <p class="tag">Indoor</p>
              <p class="tag">Outdoor</p>
              <p class="tag">Walking</p>
              <p class="tag">Running</p>
              <p class="tag">Cycling</p>
              <p class="tag">Hiking</p>
              <p class="tag">Kayaking</p>
              <p class="tag">Swimming</p>
              <p class="tag">Diving</p>
              <p class="tag">Wintersports</p>
              <p class="tag">Climbing</p>
              <p class="tag">Rafting</p>
              <p class="tag">Skydiving</p>
              <p class="tag">Exhibitions</p>
              <p class="tag">Foodie</p>
              <p class="tag">Festivals</p>
              <p class="tag">Architecture</p>
              <p class="tag">History</p>
              <p class="tag">Local</p>
              <p class="tag">Sightseeing</p>
              <p class="tag">Road Trip</p>
              <p class="tag">Blue Voyage</p>
              <p class="tag">Family</p>
              <p class="tag">Children Friendly</p>
              <p class="tag">Pet Friendly</p>
              <p class="tag">Corona Friendly</p>
              <p class="tag">Romantic</p>
              <p class="tag">Disability Friendly</p>
              <p class="tag">Active</p>
              <p class="tag">Adventure</p>
              <p class="tag">Calm</p>
              <p class="tag">Lazy</p>
              <p class="tag">Public Transport</p>
              <p class="tag">Private Vehicle</p>
              <p class="tag">Ponds</p>
              <p class="tag">Amusements</p>
              <p class="tag">Performance</p>
            </div>


          </div>
        </div>
      </div>
      </form>
    
  </div>
</div>

</div>
@endsection