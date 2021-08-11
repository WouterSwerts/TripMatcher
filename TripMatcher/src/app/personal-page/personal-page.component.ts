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


  constructor(public credentials: CredentialsService, public router: Router) { }

  ngOnInit(): void {
    // this.userEmail = this.credentials.userEmail;
    // this.userName = this.credentials.userName;

    this.userEmail = sessionStorage.getItem('userEmail');
    this.userName = sessionStorage.getItem('userName');
  }


 

}
