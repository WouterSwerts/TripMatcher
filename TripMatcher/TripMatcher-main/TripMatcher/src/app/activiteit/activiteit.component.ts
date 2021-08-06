import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-activiteit',
  templateUrl: './activiteit.component.html',
  styleUrls: ['./activiteit.component.css']
})
export class ActiviteitComponent implements OnInit {
statusClass = "voor";

veranderKleur(){
  this.statusClass = "na";
}
  constructor() { }

  ngOnInit(): void {
  }

}
