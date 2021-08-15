import { Component, OnInit } from '@angular/core';

import { CredentialsService } from '../credentials.service';

import { OpenOverlayService } from '../open-overlay.service';

import { Router } from '@angular/router';

import { DatabaseService } from '../database.service';

import { FilterService } from '../filter.service';


@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  menu: any;

  userName= sessionStorage.getItem('userName');

  openClose = false;

  openNavBarPersonalDisplay = false;

  constructor(public credentials: CredentialsService, public openOverlay: OpenOverlayService, public router: Router, public database: DatabaseService, public filter: FilterService) { }

  apiActivities: any;

  Belgium = "Belgium";
  Netherlands = "Netherlands";
  France = "France";
  Italy = "Italy";
  Germany = "Germany";
  All = '"Belgium" OR Country="Germany"';

  target: any;

  ngOnInit(): void {
    this.userName = sessionStorage.getItem('userName');

    this.database.getMenuActivities().subscribe((data) => {
      this.apiActivities = data;
    })

    // this.refreshPage();

  }

  

  refreshPage() {
    window.location.reload();
    return
  }

  openMenu() {
    this.openClose = true;
  }

  closeMenu() {
    console.log("testClose");
    this.openClose = false;
  }

  openSettings() {
    this.openOverlay.changeOverlayDisplay();
    this.openNavBarPersonalDisplay = false;
  };

  openNavBarPersonal() {
    this.openNavBarPersonalDisplay =! this.openNavBarPersonalDisplay;
  };

  signOut() {
    sessionStorage.clear();
    this.router.navigate([""]);
    this.openNavBarPersonalDisplay = false;
  }

  openLogin() {
    this.openOverlay.changeOverlayDisplay();
    this.openOverlay.loginComponent = true;
    this.openOverlay.registerComponent = false;
  }

  openRegister() {
    this.openOverlay.changeOverlayDisplay();
    this.openOverlay.loginComponent = false;
    this.openOverlay.registerComponent = true;

  }

  topp() {
    this.router.navigate(["personalPage"]);
  }

}
