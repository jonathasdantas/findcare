import { BaseModel } from "app/shared/models/base.model";

/**
 * Level of the language that the helper speaks
 * E.g: Beginner, Elementary, Intermediate, etc
 * 
 * Author: jonathasdantas
 */
export class LanguageLevel extends BaseModel {
  level: string;
}
