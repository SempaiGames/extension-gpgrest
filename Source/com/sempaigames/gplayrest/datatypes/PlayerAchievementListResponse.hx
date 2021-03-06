package com.sempaigames.gplayrest.datatypes;

import haxe.Json;

class PlayerAchievementListResponse extends GoogleDataType {

	public var nextPageToken(default, null) : String;
	public var items(default, null) : Array<PlayerAchievement>;

	public function new(data : String) {
		super();
		var obj = Json.parse(data);
		verifyKind(obj, "games#playerAchievementListResponse");
		this.nextPageToken = obj.nextPageToken;
		this.items = [];
		if (obj.items!=null) {
			for (it in cast(obj.items, Array<Dynamic>)) {
				this.items.push(new PlayerAchievement(Json.stringify(it)));
			}
		}
	}

}
