# jQuery Nav Menu Plugin Specs v1.0.0-alpha.1 - Track navigation state and reveal content.
# https://github.com/alextaujenis/jquery-nav-menu
# Copyright 2015 Alex Taujenis
# MIT License

jasmine.getFixtures().fixturesPath = 'base/spec';

describe "navMenu", ->
  beforeEach ->
    loadFixtures("fixtures.html")
    return

  describe "before constructor", ->
    it "the nav menu is hidden", ->
      expect($(".nav-menu")).toBeHidden()
      return

  describe "constructor", ->
    beforeEach ->
      $(window).navMenu()
      return

    it "shows the nav menu", ->
      expect($('.nav-menu')).toBeVisible()
      return

    it "sets the first nav menu item as active", ->
      nav_item = $('.nav-menu').find('.nav-item').first()
      expect(nav_item).toHaveClass("active")
      return

  describe "click second nav item", ->
    beforeEach ->
      $(window).navMenu()
      second_nav_item = $('.nav-menu').find('.nav-item')[1]
      second_nav_item.click()
      return

    it "deactivates the first nav item", ->
      first_nav_item = $('.nav-menu').find('.nav-item')[0]
      expect(first_nav_item).not.toHaveClass("active")
      return

    it "activates the second nav item", ->
      second_nav_item = $('.nav-menu').find('.nav-item')[1]
      expect(second_nav_item).toHaveClass("active")
      return

    it "hides the first nav item target", ->
      expect($(".alpha")).toBeHidden()
      return

    it "shows the second nav item target", ->
      expect($(".beta")).toBeVisible()
      return