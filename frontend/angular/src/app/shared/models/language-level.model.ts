import { BaseModel } from "app/shared/models/base.model";

/**
 * Level of the language that the helper speaks
 * E.g: Beginner, Elementary, Intermediate, etc
 * 
 * @export
 * @class LanguageLevel
 * @extends {BaseModel}
 */
export class LanguageLevel extends BaseModel {
  level: string;
}
