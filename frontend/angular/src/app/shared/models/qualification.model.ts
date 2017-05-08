import { BaseModel } from "app/shared/models/base.model";

/**
 * Qualification of the Helper: Driver License, CPR Certificate,
 * First Aif Certificate, etc
 * 
 * Author: jonathasdantas
 */
export class Qualification extends BaseModel {
  name: string;
  date: Date;
}
