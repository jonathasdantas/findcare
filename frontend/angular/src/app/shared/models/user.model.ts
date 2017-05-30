import { BaseModel } from "app/shared/models/base.model";

/**
 * Basic User Model
 * 
 * @export
 * @class User
 * @extends {BaseModel}
 */
export class User extends BaseModel {
  firstName: string;
  lastName: string;
  email: string;
  username:string;
  token: string;
  locale: string;
  dateOfBirth: Date;
  firstSeenAt: Date;
  lastSeenAt: Date;
}
