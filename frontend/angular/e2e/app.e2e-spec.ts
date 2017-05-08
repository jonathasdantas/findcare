import { FindcarePage } from './app.po';

describe('findcare App', () => {
  let page: FindcarePage;

  beforeEach(() => {
    page = new FindcarePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
