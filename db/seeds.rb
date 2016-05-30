# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user = User.new
@user.name = 'Muramatsu Naoya'
@user.username = 'DenDen047'
@user.email = 's1613130@u.tsukuba.ac.jp'
@user.about = 'Hello'
@user.save

@user = User.new
@user.name = 'Tanaka Taro'
@user.username = 'taro'
@user.email = 'sxxxxxx@u.tsukuba.ac.jp'
@user.about = 'Hello'
@user.save

