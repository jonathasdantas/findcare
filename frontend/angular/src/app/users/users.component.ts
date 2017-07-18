import { Component } from '@angular/core';
import { UsersService } from "app/users/users.service";

@Component({
  selector: 'users',
  template: '<router-outlet></router-outlet>'
})
export class UsersComponent {
  constructor (private service: UsersService) {

  }
}