import { Component, OnInit } from '@angular/core';
import { UsersService } from "app/users/users.service";
import { User } from "app/shared";

@Component({
  selector: 'app-user-list',
  templateUrl: './user-list.component.html',
  styleUrls: ['./user-list.component.scss']
})
export class UserListComponent implements OnInit {

  users: User [];

  constructor(private service: UsersService) { }

  ngOnInit() {
    this.service.getUsers().subscribe(
      users => this.users = users
    );
  }

}
