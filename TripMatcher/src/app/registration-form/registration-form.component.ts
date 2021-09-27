 import { Component, OnInit } from '@angular/core';

import { FormGroup, FormControl } from '@angular/forms';

import { DatabaseService } from '../database.service';

import { OverlayComponent } from '../overlay/overlay.component';

import { TopersonalpageService } from '../topersonalpage.service';

@Component({
  selector: 'app-registration-form',
  templateUrl: './registration-form.component.html',
  styleUrls: ['./registration-form.component.css']
})
export class RegistrationFormComponent implements OnInit {

  constructor(public databank: DatabaseService, public overlay: OverlayComponent, public topersonalpage: TopersonalpageService) { }

  ngOnInit(): void {
  }

  registratieFormulier = new FormGroup({
    Rname: new FormControl(),
    Remail: new FormControl(),
    Rpassword: new FormControl()
  })

  submitRegistration() {
    this.databank.postItem({"name":this.registratieFormulier.controls.Rname.value,"email":this.registratieFormulier.controls.Remail.value, "password":this.registratieFormulier.controls.Rpassword.value, 'photo':'None'}).subscribe(result=>console.log(result));

    this.overlay.closeOverlay();
        sessionStorage.setItem('userEmail', this.registratieFormulier.controls.Remail.value);
        sessionStorage.setItem('userName', this.registratieFormulier.controls.Rname.value);
        this.topersonalpage.toPersonalPage();

  }




}
