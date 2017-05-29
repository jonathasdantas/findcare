import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { PageScrollConfig } from "ng2-page-scroll";

@Component({
  selector: 'header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  constructor() {
    PageScrollConfig.defaultDuration = 400;
  }

  ngOnInit() {
  }

}
