import { Component, ViewEncapsulation } from '@angular/core';

@Component({
  selector: 'app',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
  encapsulation: ViewEncapsulation.None
})
export class AppComponent {
  sections: any [] = [
    {
      name: 'How\'s it works?',
      id: 'hows-it-works'
    },
    {
      name: 'Customers',
      id: 'customers'
    },
    {
      name: 'Contact',
      id: 'contact'
    },
    {
      name: 'About Us',
      id: 'about-us'
    }
  ];
}
