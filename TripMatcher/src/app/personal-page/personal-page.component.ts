import { Component, Input, OnInit } from '@angular/core';
import { CredentialsService } from '../credentials.service';

@Component({
  selector: 'app-personal-page',
  templateUrl: './personal-page.component.html',
  styleUrls: ['./personal-page.component.css']
})


export class PersonalPageComponent implements OnInit {



  constructor(public credentials: CredentialsService) { }

  ngOnInit(): void {
  }

  userEmail = this.credentials.userEmail;
  userName = this.credentials.userName;

}
