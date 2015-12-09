jasmine.getFixtures().fixturesPath = 'base/spec';

describe "navMenu", ->
  beforeEach ->
    loadFixtures("fixtures.html")
    return

  it "does something", ->
    console.log $("html").html()
    return