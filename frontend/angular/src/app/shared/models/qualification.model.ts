import { BaseModel } from "app/shared/models/base.model";

/**
 * Qualification of the Helper: Driver License, CPR Certificate,
 * First Aif Certificate, etc
 * 
 * @export
 * @class Qualification
 * @extends {BaseModel}
 */
export class Qualification extends BaseModel {
  name: string;
  date: Date;
}
