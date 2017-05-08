import { BaseModel } from "app/shared/models/base.model";
import { User } from "app/shared/models/user.model";

/**
 * Schedule of the Helper
 * 
 * Author: jonathasdantas
 */
export class Schedule extends BaseModel {
  begin: Date;
  end: Date;
  user: User;
  twoHands: User;
}
