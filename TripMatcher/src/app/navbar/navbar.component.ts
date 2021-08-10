import { Component, OnInit } from '@angular/core';

import { CredentialsService } from '../credentials.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  menu: any;

  openClose = false;

  constructor(public credentials: CredentialsService) { }

  ngOnInit(): void {
  }

  openMenu() {
    this.openClose = true;
  }

  closeMenu() {
    console.log("testClose");
    this.openClose = false;
  }

  userName = this.credentials.userName;

}
