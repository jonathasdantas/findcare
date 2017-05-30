import { BaseModel } from "app/shared/models/base.model";

/**
 * Avaliability of the Helper
 * E.g: Full-time, Part-time, Weekeends, etc
 * 
 * @export
 * @class Avaliability
 * @extends {BaseModel}
 */
export class Avaliability extends BaseModel {
  name: string;
}
