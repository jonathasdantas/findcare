import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'home-section',
  templateUrl: './home-section.component.html',
  styleUrls: ['./home-section.component.scss']
})
export class HomeSectionComponent implements OnInit {

  @Input() sectionId: any;

  constructor() { }

  ngOnInit() {
  }

}
