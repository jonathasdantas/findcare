import { BaseModel } from "app/shared/models/base.model";
import { User } from "app/shared/models/user.model";

/**
 * Helper's Schedule
 * 
 * @export
 * @class Schedule
 * @extends {BaseModel}
 */
export class Schedule extends BaseModel {
  begin: Date;
  end: Date;
  user: User;
  twoHands: User;
}
