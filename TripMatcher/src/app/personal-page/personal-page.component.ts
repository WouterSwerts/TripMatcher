import { Component, Input, OnInit } from '@angular/core';
import { CredentialsService } from '../credentials.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-personal-page',
  templateUrl: './personal-page.component.html',
  styleUrls: ['./personal-page.component.css']
})


export class PersonalPageComponent implements OnInit {
  userEmail: any;
  userName: any;

  suggestions = true;
  interests = false;

  admin = false;

  




  constructor(public credentials: CredentialsService, public router: Router) { }

  ngOnInit(): void {

    this.userEmail = sessionStorage.getItem('userEmail');
    this.userName = sessionStorage.getItem('userName');

    // window.location.reload();

    if(this.userEmail = 'test@test.be') {
      this.admin = true
    } else {
      this.admin = false
    }

    
  }

  goToInterests() {
    this.suggestions = false;
    this.interests = true;
  }

  goToSuggestions() {
    this.suggestions = true;
    this.interests = false;
  }

 


 

}
