import { Component, OnInit } from '@angular/core';

import { FormGroup, FormControl } from '@angular/forms';

import { DatabaseService } from '../database.service';

@Component({
  selector: 'app-registration-form',
  templateUrl: './registration-form.component.html',
  styleUrls: ['./registration-form.component.css']
})
export class RegistrationFormComponent implements OnInit {

  constructor(public databank: DatabaseService) { }

  ngOnInit(): void {
  }

  registratieFormulier = new FormGroup({
    Rname: new FormControl(),
    Remail: new FormControl(),
    Rpassword: new FormControl()
  })

  submitRegistration() {
    this.databank.postItem({"name":this.registratieFormulier.controls.Rname.value,"email":this.registratieFormulier.controls.Remail.value, "password":this.registratieFormulier.controls.Rpassword.value}).subscribe(result=>console.log(result));

  }




}
