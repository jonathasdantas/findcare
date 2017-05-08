import { BaseModel } from "app/shared/models/base.model";
import { LanguageLevel } from "app/shared/models/language-level.model";

/**
 * Language that the Helper speaks
 * 
 * Author: jonathasdantas
 */
export class Language extends BaseModel {
  name: string;
  level: LanguageLevel;
  country: string;
}
