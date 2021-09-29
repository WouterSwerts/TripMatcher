<div class="header">
   <div class="navBarDark">
      <a href="http://localhost:4200/"><img src="{{ asset('assets/img/LogoDarkTheme.png') }}" alt="logo"></a>

      <a href="http://localhost:4200/">Logout</a>
   </div>
   <div class="heroAdmin">
      <h2>Admin Dashboard</h2>
   </div>
   <div class="subNavBarOption">

         <a class="{{ Request::is('index/create') ? 'activeLink' : '' }}" href="{{ route('index.create') }}">Add Trip</a>
         <a class="{{ Request::is('index') ? 'activeLink' : '' }}" href="{{ route('index.store') }}">Edit / Delete Trip</a>

   </div>


</div>