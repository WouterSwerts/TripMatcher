import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  menu: any;

  openClose = false;

  constructor() { }

  ngOnInit(): void {
  }

  openMenu() {
    this.openClose = true;
  }

  closeMenu() {
    console.log("testClose");
    this.openClose = false;
  }

}
