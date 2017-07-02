import { BaseModel } from "app/shared/models/base.model";

/**
 * Basic User Model
 * 
 * @export
 * @class User
 * @extends {BaseModel}
 */
export class User extends BaseModel {
  name: string;
  email: string;
  token: string;
  password:string;
  dateOfBirth: Date;
  firstSeenAt: Date;
  lastSeenAt: Date;
  locale: string;
}
